public class ForloopClass {
	
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccountList(){
        List<Account> acclist = [SELECT Id, Name FROM Account];
        return acclist;
    }
}