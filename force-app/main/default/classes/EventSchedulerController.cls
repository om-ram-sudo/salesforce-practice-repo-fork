public with sharing class EventSchedulerController {
    @AuraEnabled(cacheable=true)
    public static List<Event__c> getUpcomingEvents() {
        return [SELECT Id, Name, Event_Date__c FROM Event__c WHERE Event_Date__c >= TODAY];
    }

    @AuraEnabled
    public static String registerAttendee(Id eventId, String contactName, String notes) {
        Contact contact = [SELECT Id FROM Contact WHERE Name = :contactName LIMIT 1];

        List<Event_Attendee__c> existing = [
            SELECT Id FROM Event_Attendee__c 
            WHERE Event__c = :eventId AND Contact__c = :contact.Id
        ];
        if (!existing.isEmpty()) {
            throw new AuraHandledException('Contact is already registered for this event.');
        }

        Event__c eventRecord = [SELECT Capacity__c, Allow_Waitlist__c, 
                                       (SELECT Id FROM Event_Attendees__r) 
                                FROM Event__c WHERE Id = :eventId];

        Integer currentCount = eventRecord.Event_Attendees__r.size();
        Event_Attendee__c newAttendee = new Event_Attendee__c(
            Event__c = eventId,
            Contact__c = contact.Id,
            Notes__c = notes,
            Registered_On__c = System.now()
        );

        if (currentCount >= eventRecord.Capacity__c) {
            if (eventRecord.Allow_Waitlist__c) {
                newAttendee.Status__c = 'Waitlisted';
            } else {
                throw new AuraHandledException('Event is full and waitlisting is not allowed.');
            }
        } else {
            newAttendee.Status__c = 'Registered';
        }

        insert newAttendee;
        return 'Contact has been ' + newAttendee.Status__c + ' successfully.';
    }
}