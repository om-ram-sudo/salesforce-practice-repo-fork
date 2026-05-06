public with sharing class AccountCreate {
    public AccountCreate() {

    }
    public static void createAccount(){
        Account acc = new Account();
        acc.Name = 'New Account';
        insert acc;
    }
}