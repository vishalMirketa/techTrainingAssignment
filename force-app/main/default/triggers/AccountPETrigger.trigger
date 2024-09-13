trigger AccountPETrigger on NEW_ACCOUNT__e (after insert) {

    for(New_Account__e acc : trigger.new){
        Account account = new Account();
        account.Name = acc.ACCOUNT_NAME__c;
        account.Website= acc.Website__c;
        insert account;
        System.debug('--account--');
    }
    
}