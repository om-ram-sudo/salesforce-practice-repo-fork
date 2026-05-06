public class acccconopp {
    
    public Account acc {get;set;}
    public Contact con {get;set;}
    public Opportunity opp {get;set;}
    
    public acccconopp(){
    
        acc = new Account();
        con = new Contact();
        opp = new Opportunity();
    }
    
    public PageReference saveit(){
        insert acc;
        con.AccountId=acc.Id;
        insert con;
        opp.AccountId=acc.Id;
        insert opp;
       // opp.Id=con.Id;
        return new PageReference('/'+acc.Id);
    }
    
    public PageReference cancelit(){
        return new PageReference('01r5j000000n8Lb');
    }
}