import { LightningElement, track, wire } from 'lwc';
import getUpcomingEvents from '@salesforce/apex/EventSchedulerController.getUpcomingEvents';
import registerAttendee from '@salesforce/apex/EventSchedulerController.registerAttendee';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class EventScheduler extends LightningElement {
    @track eventOptions = [];
    @track selectedEventId = '';
    @track contactName = '';
    @track notes = '';

    @wire(getUpcomingEvents)
    wiredEvents({ error, data }) {
        if (data) {
            this.eventOptions = data.map(event => ({
                label: event.Name + ' - ' + event.Event_Date__c,
                value: event.Id
            }));
        } else if (error) {
            this.showToast('Error', 'Error loading events', 'error');
        }
    }

    handleEventChange(event) {
        this.selectedEventId = event.detail.value;
    }

    handleContactChange(event) {
        this.contactName = event.target.value;
    }

    handleNotesChange(event) {
        this.notes = event.target.value;
    }

    handleSubmit() {
        if (!this.selectedEventId || !this.contactName || !this.notes) {
            this.showToast('Validation Error', 'All fields are required', 'warning');
            return;
        }

        registerAttendee({
            eventId: this.selectedEventId,
            contactName: this.contactName,
            notes: this.notes
        })
        .then(result => {
            this.showToast('Success', result, 'success');
        })
        .catch(error => {
            this.showToast('Error', error.body.message, 'error');
        });
    }

    showToast(title, message, variant) {
        this.dispatchEvent(
            new ShowToastEvent({
                title: title,
                message: message,
                variant: variant
            })
        );
    }
}