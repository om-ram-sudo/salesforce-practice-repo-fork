public class createQuote {
   
    public String acid {get;set;}
    
    public List<Oopportunity__c> olist {get;set;}
    public Qquote__c qot {get;set;}
    
    public Qquote_Line_Item__c qlineitem {get;set;}
    public List<Qquote_Line_Item__c> qlineitemlist {get;set;}
    
    public createQuote(){
        
        olist = new List<Oopportunity__c>();
        qot = new Qquote__c();
        qlineitem = new Qquote_Line_Item__c();
        qlineitemlist = new List<Qquote_Line_Item__c>();
        
        acid = ApexPages.currentPage().getParameters().get('id');
        
        olist = [Select id, Name,(Select id, Name , Pproduct__c ,Oopportunity__c from Oopportunity_Line_Items__r), Account__c, Contact__c from Oopportunity__c where id = :acid];
        
        
        for(Oopportunity__c opp : olist){
            
            qot.Account__c = opp.Account__c;
            qot.Contact__c = opp.Contact__c;
            qot.Oopportunity__c = opp.Id;
            
            for(Oopportunity_Line_Item__c opline : opp.Oopportunity_Line_Items__r){
                
                qlineitem.Oopportunity_Line_Item__c = opline.Id;
                qlineitem.Pproduct__c = opline.Pproduct__c;
                qlineitemlist.add(qlineitem);
            }
        }
    }
    public PageReference saveit(){
		insert qot;
        for(Qquote_Line_Item__c qotlin : qlineitemlist){
            qotlin.Qquote__c=qot.Id;
        }
        insert qlineitemlist;
		return new PageReference('/'+qot.Id);    
    }
    
    public PageReference cancel(){
        return new PageReference('/a0I');
    }
    
}