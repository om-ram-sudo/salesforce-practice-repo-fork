public class DisplayAccountRecord {

    @AuraEnabled(cacheable=true)
    public static List<Account> showAccountRecords(){
        List<Account> accountList = [SELECT Id, Name, Phone, Email__c FROM Account LIMIT 10];
        if(!accountList.isEmpty()){
            return accountList;
        }
        return NULL;
    }
    
    @AuraEnabled
    public static string updateAccountRecord(Object accountRecord){
        return 'Done';
    }
}