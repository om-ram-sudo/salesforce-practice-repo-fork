public class FutureMethodDemo {
    
    public FutureMethodDemo(){
        System.debug('I am in constructor');
        method1();
        method2();
        method3();
        
        method5();
    }
    
    public void method1(){
        System.debug('I am in method1');
    }
    
    public void method2(){
        System.debug('I am in method2');
        method4();
    }
    @future
    public static void method3(){
        System.debug('I am in static method3');
    }
    @future
    public static void method4(){
        System.debug('I am in static method4');
    }
    
    public static void method5(){
        System.debug('I am in static method5');
        
    }
    
    /*public static void createAccount(){
    //Step 1 : create account {non-setup object}
    Account acc = new Account(
    Name = 'Salesforce Account 101',
    Rating = 'Hot' 
    );
    insert acc;
    
    //Step 2 : create user {setup object}
    createUser();
    }
    
    @future
    public static void createUser(){
    UserRole role = [SELECT Id FROM UserRole WHERE Name='COO' LIMIT 1];
    Profile profile = [SELECT Id FROM Profile WHERE Name = 'Minimum Access - Salesforce' LIMIT 1];
    String orgId = UserInfo.getOrganizationId();
    String dateString = String.valueof(Datetime.now()).replace(' ','').replace(':','').replace('-','');
    Integer randomInt = Integer.valueOf(math.rint(math.random()*1000000));
    String uniqueName = orgId + dateString + randomInt;
    User tempUser = new User(
    FirstName = 'SFDC - Admin',
    LastName = 'Dev',
    email = uniqueName + '@sfdc' + orgId + '.org',
    Username = uniqueName + '@sfdc' + orgId + '.org',
    EmailEncodingKey = 'ISO-8859-1',
    Alias = uniqueName.substring(18, 23),
    TimeZoneSidKey = 'America/Los_Angeles',
    LocaleSidKey = 'en_US',
    LanguageLocaleKey = 'en_US',
    ProfileId = profile.Id,
    UserRoleId = role.Id
    );
    insert tempUser;
    
    }*/
}