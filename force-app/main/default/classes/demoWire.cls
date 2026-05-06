public class demoWire {
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccountRecord(){
        List<Account> acclist = [SELECT Id, Name FROM Account];
        return acclist;
    }
}