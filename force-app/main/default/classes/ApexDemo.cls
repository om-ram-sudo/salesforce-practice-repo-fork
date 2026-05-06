public with sharing class ApexDemo {
    public ApexDemo() {

    }
    public static void listToSet(){
        Set<Id> idSet = new Set<Id>();
        for(Account eachaccount: [SELECT Id, Name, Phone FROM Account LIMIT 5]){
            idSet.add(eachaccount.Id);
        }
        System.debug('Account Id : '+idset); //{0015j000018VmPTAA0, 0015j000018VmPUAA0, 0015j000018VmPbAAK, 0015j000018VmPcAAK, 0015j000018VmPdAAK}
        for(Id i : idset){
            System.debug('Account Id : '+i);
        }
    }
}