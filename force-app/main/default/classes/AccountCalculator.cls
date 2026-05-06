public class AccountCalculator {
    @future
    public static void countContact(List<Id> accIds){
        List<Account> acclist = [Select Id, (Select Id From Contacts) From Account Where Id IN : accIds];
        for(Account acc : acclist){
            acc.Total_Number_Of_Contact_s__c = acc.Contacts.size();
        }
        if(!acclist.isEmpty()){
            update acclist;
        }
    }
}