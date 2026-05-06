public class BatchApexClass implements DataBase.Batchable<sobject>{
	
    public DataBase.QueryLocator start(DataBase.BatchableContext BC){
        return DataBase.getQueryLocator([Select Id, Name, Email__c From Account]);
    }
    public void execute(DataBase.BatchableContext BC, List<Account> scope){
        system.debug('Scope Size : '+scope.size());
        List<Account> updatedAccount = new List<Account>();
        for(Account acc : scope){
            if(acc.Email__c == null){
                system.debug('i am in if');
                acc.Email__c = 'salesforce@gmail.com';
            }else{
                system.debug('i am in else');
            }
            updatedAccount.add(acc);
        }
            update updatedAccount;
    }
    public void finish(DataBase.BatchableContext BC){
        system.debug('i am in finish method');
    }
}