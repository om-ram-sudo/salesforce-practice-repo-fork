@isTest
public class AccountCalculatorTest {
	@isTest
    private static void countContactTest(){
		List<Account> acclist = new List<Account>();
        for(Integer i ; i <= 200 ; i++){
            Account acc = new Account();
            acc.Name = 'Account '+i;
            acclist.add(acc);
        }
        if(!acclist.isEmpty()){
            insert acclist;
        }
        
        List<Contact> conlist = new List<Contact>();
        List<Id> accIds = new List<Id>();
        for(Account acc : acclist){
            Contact con = new Contact();
            con.AccountId = acc.Id;
            con.LastName = acc.Name;
            accIds.add(acc.Id);
            conlist.add(con);
        }
        if(!conlist.isEmpty()){
            insert conlist;
        }
        Test.startTest();
        AccountCalculator.countContact(accIds);
        Test.stopTest();
        
        List<Account> accountList = [Select Id, Total_Number_Of_Contact_s__c From Account];
        System.assertEquals(1, accountList[0].Total_Number_Of_Contact_s__c, 'Not Showing Contacts');
    }
}