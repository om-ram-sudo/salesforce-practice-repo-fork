public with sharing class AccountTriggerHandler {
    public static void handleBeforeInsert(List<Account> newAccountList){
        for(Account acc : newAccountList){
            if(acc.AnnualRevenue == null || acc.AnnualRevenue < 100){
                acc.Rating = 'Cold';
            } else if(acc.AnnualRevenue >= 100 || acc.AnnualRevenue < 200){
                acc.Rating = 'Warm';
            }else if(acc.AnnualRevenue > 200){
                acc.Rating = 'Hot';
            }
        }
    }
}