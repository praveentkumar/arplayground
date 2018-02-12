public class UserController {
    Public Internaluser usr {get; set;}
    
    Public UserController(){
          usr = new Internaluser();
        
    }
    
    public void sendRequest(){
        HttpRequest req = new HttpRequest();
        Http h = new Http();
        /*
        req.setEndpoint('https://oauth.platform.intuit.com/oauth2/v1/tokens/bearer');
        req.setMethod('POST');
        req.setHeader('Accept', 'application/json');
        req.setHeader('Authorization', 'Basic UTA0Y0hWNEs1TTdmV2lEZ3doakhQTDFLNWh2N0d3ZnM5NVdTYzI2OGFzWGdlUUVUM0w6UllNMVpZNjBtT0FTbHJTOFhVampwSDZ6c1hrdUN5UW91TnZZZ3R6MA==');
        req.setHeader('Content-Type', 'application/x-www-form-urlencoded');
        Req.setBody(body);
        HttpResponse res = new HttpResponse();
        res = h.send(req);
        */
    }
    
    public class Internaluser{
        public String firstname {get; set;}
        public String lastname {get; set;}
        public String phone {get; set;}
        public String mobile {get; set;}
    }

}