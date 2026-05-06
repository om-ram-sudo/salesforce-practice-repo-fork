public class ImperativeClass {

    @AuraEnabled
    public static List<Account> getAccountList(){
        List<Account> acclist = [SELECT Id, Name FROM Account];
        return acclist;
    }
}