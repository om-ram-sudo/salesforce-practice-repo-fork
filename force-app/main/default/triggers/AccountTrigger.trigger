trigger AccountTrigger on Account (before insert) {
    if(trigger.isBefore){
        if(trigger.isInsert){
            AccountTriggerHandler.handleBeforeInsert(trigger.new);
        }
        
    }
}