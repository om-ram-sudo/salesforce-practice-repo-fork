public class SalesforceConnect {
	
    public static string getCases(){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndPoint('callout:SFDCB/services/apexrest/Cases');
        request.setMethod('GET');
        
        HttpResponse response = http.send(request);
        System.debug('Status Code : '+response.getStatusCode());
        if(response.getStatusCode() == 200){
             System.debug('Response : '+response.getBody());
            return response.getBody();
        }
        return '';
    }
}