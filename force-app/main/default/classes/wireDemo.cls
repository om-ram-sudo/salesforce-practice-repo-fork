public class wireDemo {
	
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccountRecordList(){
        List<Account> acclist = [SELECT Id, Name FROM Account];
        return acclist;
    }
}