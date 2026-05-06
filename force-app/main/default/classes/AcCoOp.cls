public class AcCoOp {
    
    public Account ac {get;set;}
    public Contact co {get;set;}
    public Opportunity op {get;set;}
    /*mian comman */
    public AcCoOp(){
        ac = new Account();
        co = new Contact();
        op = new Opportunity();
    }
    
    public pagereference save(){
        insert ac; 
        co.AccountId=ac.Id;
        insert co; 
        op.AccountId=ac.Id;
        insert op;
        
        return new pagereference('/'+ac.Id);
    }
    
    public pagereference cancel(){
        return new pagereference('/01r5j000000n75C');
    }
        
}