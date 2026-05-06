public class LWCAccRec {
	
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccountRecord(){
        List<Account> accountList = [SELECT Id, Name, Phone, Email__c FROM Account LIMIT 10];
        if(!accountList.isEmpty()){
            return accountList;
        }
        return NULL;
    }
    
    @AuraEnabled
    public static String updateRecords(Object accRec){
        return 'Done';
    }
}