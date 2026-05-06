public with sharing class ApexDemo1 {
    public ApexDemo1(){

    }
    public static void emptyMethod(){

    }
    public static void methodExample(){
        
    }
    public static void getAccountRecord(){
        List<Account> accountList=[SELECT Id, Name FROM Account LIMIT 5];
        Set<Id> idset = New Set<Id>();
        for(Account eachaccount : accountList){
            idset.add(eachaccount.Id);
        }
        for(Id i : idset){
            system.debug('ID is :' +i);
        }
        
    }
}