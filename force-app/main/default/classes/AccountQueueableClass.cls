public class AccountQueueableClass implements Queueable{
	
    public List<Account> aclist;
    public AccountQueueableClass(List<Account> acclist){
        this.aclist = acclist;
    }
    
    public void execute(QueueableContext QC){
        System.debug('Queueable Class Executed..!');
        System.debug('List Of Account : '+aclist);
        for(Account acc : aclist){
            
        }
       
    }
}