public class AccountBatchClass implements DataBase.Batchable<sObject>{
	
    public DataBase.QueryLocator Start(DataBase.BatchableContext BC){
        return null;
    }
    
    public void execute(DataBase.BatchableContext BC, List<sObject> SOB){
        
    }
    
    public void finish(DataBase.BatchableContext BC){
        
    }
           
}