public class CreateAccRecByCallApex {
	
    @AuraEnabled
    public static List<Account> createRecord(String accName, String accIndustry){
        List<Account> acclist = new List<Account>();
        if(accName != null){
            Account acc = new Account();
            acc.Name = accName;
            acc.Industry = accIndustry;
            acclist.add(acc);
        }
        if(!acclist.isEmpty()){
            insert acclist;
            return acclist;
        }
        return null;
    }
}