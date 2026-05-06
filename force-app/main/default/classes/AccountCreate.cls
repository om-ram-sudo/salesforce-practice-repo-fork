public with sharing class AccountCreate {
    public AccountCreate() {

    }
    public static void createAccount(){
        Account acc = new Account();
        acc.Name = 'New Account';
        insert acc;
    }
    public static void createMultipleAccounts(){
        List<Account> acclist = new List<Account>();
        for(Integer i = 1; i <= 5; i++){
            Account acc = new Account();
            acc.Name = 'Account ' + i;
            acclist.add(acc);
        }
        if(!acclist.isEmpty()){
            insert acclist;
            }
            }

}