public class Spoonacular {
	private static final string API = 'https://api.spoonacular.com';
    private static final string APIKEY = 'a3534257167447039c01481dcbf8b471';
    
    public static void getRandomRecipes(){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndPoint(API+'/recipes/random?apiKey='+APIKEY);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        System.debug('Status Code : '+response.getStatusCode());
        if(response.getStatusCode() == 200){
            System.debug('Result : '+response.getBody());
        }
    }
    
    public static void getRecipes(String recipeId){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        //https://api.spoonacular.com/recipes/{id}/information
        request.setEndPoint(API+'/recipes/'+recipeId+'/information?apiKey='+APIKEY);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        System.debug('Status Code : '+response.getStatusCode());
        if(response.getStatusCode() == 200){
            System.debug('Result : '+response.getBody());
        }
    }
    
    public static void getRecipesByIngredients(String ingredients){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        ////https://api.spoonacular.com/recipes/findByIngredients?ingredients=apples,+flour,+sugar&number=2
        request.setEndPoint(API+'/recipes/findByIngredients?apiKey='+APIKEY+'&ingredients : '+ingredients);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        System.debug('Status Code : '+response.getStatusCode());
        if(response.getStatusCode() == 200){
            System.debug('Result : '+response.getBody());
        }
    }
}