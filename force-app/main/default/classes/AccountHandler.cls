public class AccountHandler {
    /*public AccountHandler(){
        system.debug('manually created constructor');
    }*/
    /*public AccountHandler(){
        system.debug('without parameter constructor called!');
    }
        
    public AccountHandler(string companyName, integer age){
        system.debug('string, age with parameter constructor called!');
    }
    public AccountHandler(integer age, string companyName){
        system.debug('age, string with parameter constructor called!');
    }*/

    public void createAccountRecordWithRelatedContact(string fName, string lName){
        Account acc = new Account();
        acc.Name = 'Nov Acc';
        acc.Phone = '9860745458';
        insert acc;
        system.debug('Account record created successfully!'+ acc.Id);

        Contact con = new Contact();
        con.FirstName = fName;
        con.LastName = lName;
        con.AccountId = acc.Id;
        insert con;
        system.debug('Contact record created successfully!'+ con.Id);
    }
}