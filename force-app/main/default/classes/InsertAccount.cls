public class InsertAccount {
    public static void accountInsert(){
        List<Opportunity> opplist = new List<Opportunity>();
        opplist = [Select Id,Name From Opportunity Where CreatedDate >= Last_Week];
        if(!opplist.isEmpty()){
            delete opplist;
        }
    }
}