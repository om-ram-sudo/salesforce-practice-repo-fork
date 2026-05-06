public class newincentive {
    
    public Incentive__c inc {get;set;}
    
    public newincentive(){
    
    inc = new Incentive__c ();
    
    }
    
    public pageReference saverec(){
        if(inc.Incentive__c != null){
            insert inc;
        }
        List<Incentive__c> inclist = new List<Incentive__c>();
        if(inc.Type__c == 'Yearly'){
            for(integer i = 1 ; i <= 1 ; i++){
                Incentive__c incentiveYearly = new Incentive__c();
                incentiveYearly.Incentive__c=inc.Incentive__c;
                incentiveYearly.Type__c=inc.Type__c;
                incentiveYearly.Date__c=inc.Date__c;
                incentiveYearly.Incentive_Amount__c=(inc.Incentive_Amount__c/1);
                inclist.add(incentiveYearly);
            }insert inclist;
        }
        if(inc.Type__c == 'Monthly'){
            for(integer i = 1 ; i <= 12 ; i++){
                Incentive__c incentiveMonthly = new Incentive__c();
                incentiveMonthly.Incentive__c=inc.Incentive__c;
                incentiveMonthly.Type__c=inc.Type__c;
                incentiveMonthly.Date__c=inc.Date__c;
                incentiveMonthly.Incentive_Amount__c=(inc.Incentive_Amount__c/12);
                inclist.add(incentiveMonthly);
            }insert inclist;
        }
        if(inc.Type__c == 'Quarterly'){
            for(integer i = 1 ; i <= 3 ; i++){
                Incentive__c incentiveQuarterly = new Incentive__c();
                incentiveQuarterly.Incentive__c=inc.Incentive__c;
                incentiveQuarterly.Type__c=inc.Type__c;
                incentiveQuarterly.Date__c=inc.Date__c;
                incentiveQuarterly.Incentive_Amount__c=(inc.Incentive_Amount__c/3);
                inclist.add(incentiveQuarterly);
            }insert inclist;
        }
        if(inc.Type__c == 'Half Yearly'){
            for(integer i = 1 ; i <= 6 ; i++){
                Incentive__c incentiveHalfYearly = new Incentive__c();
                incentiveHalfYearly.Incentive__c=inc.Incentive__c;
                incentiveHalfYearly.Type__c=inc.Type__c;
                incentiveHalfYearly.Date__c=inc.Date__c;
                incentiveHalfYearly.Incentive_Amount__c=(inc.Incentive_Amount__c/6);
                inclist.add(incentiveHalfYearly);
            }insert inclist;
        }
        return new pageReference('/'+inc.Id);
    }
        
    
    public pageReference cancelrec(){
        return new pageReference('/a07');
    }

}