public with sharing class ApexDemoWed1 {
    public ApexDemoWed1() {

    }
    public static void createAccountRecord(){
        Account acc1 = new Account();
        acc1.Name = 'ApexTest1';
        acc1.Phone = '1234567891';
        insert acc1;
        Account acc2 = new Account();
        acc2.Name = 'ApexTest2';
        acc2.Phone = '9876543219';
        insert acc2;
    }
}