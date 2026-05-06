public class sendemail {
    public String subject {get;set;}
    public String emailBody {get;set;}
    public List<String> emails = new List<String>{'prasadrmali123@gmail.com'};
    
    public pagereference sendmail(){
        Messaging.singleEmailmessage email =  new Messaging.singleEmailmessage();
        
        email.setSubject(subject); //subject - only string
        email.setPlainTextBody(emailBody); //emailBody - only string
        email.setToAddresses(emails); //toAddresses - List of string
        
        //these r only use for setting the values

        
        //now we have to send an email
        //there can be a multiple emails so there it has to be list
        Messaging.SendEmailResult[] results = Messaging.sendEmail(new Messaging.SingleEmailMessage[] { email });
        
        
        return null;
    }
}