public class newAccConEdit {
    
    public List<Contact> contacts {get; set;}
    public String accountId{get;set;}
    public newAccConEdit(){
        accountId = ApexPages.currentPage().getParameters().get('id');
        contacts = new List<contact>();
        contacts = [select Id, LastName, Phone, Email From Contact where AccountId = :accountId];            
    }
    
    public void updateIt(){
        update contacts;
    
    }
    
    public pagereference cancelIt(){
        return new pagereference('/001/o');
    }

}