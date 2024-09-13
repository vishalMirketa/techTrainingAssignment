trigger AccountTrigger on Account (before insert, after insert) {
   
    if (Trigger.isInsert) {
        
        if (Trigger.isBefore) {
            // Invoke 'AccountTriggerHandler.beforeInsert' method
            AccountTriggerHandler.beforeInsert(Trigger.new);
        }
        
        else if (Trigger.isAfter) {
            // Invoke 'AccountTriggerHandler.afterInsert' method
            AccountTriggerHandler.afterInsert(Trigger.new);
        }
    }
}