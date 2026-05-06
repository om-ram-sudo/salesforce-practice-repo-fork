public class AccountClass {

    @AuraEnabled(cacheable=true)
    public static List<Account> getAccountRecords(){
        List<Account> acclist = [SELECT Id, Name, Email__c, Phone FROM Account LIMIT 10];
        if(!acclist.isEmpty()){
            return acclist;
        }
        return NULL;
    }
}