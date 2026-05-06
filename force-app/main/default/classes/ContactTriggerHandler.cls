public class ContactTriggerHandler {

    public static void countOfContactOnAccount(List<Contact> conlist){
        List<Account> acclist = new List<Account>();
        Set<Id> accIds = new Set<Id>();
        for(Contact con : conlist){
            if(con.AccountId != null){
                accIds.add(con.AccountId);
            }
        }
        for(Account acc : [SELECT Id, Total_Number_Of_Contact_s__c,(SELECT Id FROM Contacts) FROM Account WHERE Id IN : accIds]){
            
                acc.Total_Number_Of_Contact_s__c = acc.Contacts.size();
                acclist.add(acc);
            
        }
        if(!acclist.isEmpty()){
            update acclist;
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    /*public static void countOfContact(List<Contact> conlist){
        List<Account> acclist = new List<Account>();
        Set<Id> accIds = new Set<Id>();
        for(Contact con : conlist){
            if(con.AccountId != null){
                accIds.add(con.AccountId);
            }
        }
        for(Account acc : [SELECT Id, Total_Number_Of_Contact_s__c, (SELECT Id FROM Contacts) FROM Account WHERE Id IN : accIds]){
                    acc.Total_Number_Of_Contact_s__c = acc.Contacts.size();
                    acclist.add(acc);
                
            }
     
        if(!acclist.isEmpty()){
            update acclist;
        }
    }*/
    /*public static void afterContactDelete(List<Contact> oldlist){
        Set<Id> accIds = new Set<Id>();
        for(Contact con : oldlist){
            if(con.AccountId != null){
                accIds.add(con.AccountId);
            }
        }
        for(){
            
        }
    }*/
    
    /*public static void countNoOfContact(List<Contact> newlist, List<Contact> oldlist){
        Set<Id> accIds = new Set<Id>();
        List<Account> acclist = new List<Account>();
        if(newlist != null){
            for(Contact con : newlist){
                if(con.AccountId != null){
                    accIds.add(con.AccountId);
                }
            }
        }
        if(oldlist != null){
            for(Contact con : oldlist){
                if(con.AccountId != null){
                    accIds.add(con.AccountId);
                }
            }
        }
        
        for(Account acc : [SELECT Id, NumberOfEmployees,(SELECT Id FROM Contacts) FROM Account WHERE Id IN : accIds]){
            acc.NumberOfEmployees = acc.Contacts.size();
            acclist.add(acc);
        }
        if(!acclist.IsEmpty()){
            update acclist;
        }
    }*/
}