public class applepdf {
        
    public List<Qquote__c> quote {get;set;}
    public List<Qquote_Line_Item__c> qli {get;set;}
    public string newid {get;set;}
    
    public applepdf(){
        newid = ApexPages.currentPage().getParameters().get('id');
        quote = [Select id, 
                 Account__r.Name, 
                 Account__r.BillingStreet, 
                 Account__r.BillingCity, 
                 Account__r.BillingState, 
                 Account__r.BillingPostalCode, 
                 Account__r.Phone, 
                 Account__r.Email__c 
                 from Qquote__c 
                 where id = :newid];
           
           qli = [Select id, Pproduct__r.name, Amount__c, Quantity__c, Unit_Cost__c from Qquote_Line_Item__c  
                 where Qquote__c  = :newid ];      
        
        
    }
}