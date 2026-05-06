public class impeDemo {
	
    @AuraEnabled
    public static List<Account> getAccRecList(){
        List<Account> acclist = [SELECT Id, Name From Account];
        return acclist;
    }
}