public class customAccount {
    
    public Account acc{get; set;}
    
    public customAccount(){
        acc = new Account();
    }
    
    public pagereference save(){
        insert acc;
        pagereference pf = new pagereference('/'+acc.Id);
        return pf;
    }
    
    public pagereference cancel(){
        pagereference pf = new pagereference('/001/o');
        return pf;
    }
    
   
}