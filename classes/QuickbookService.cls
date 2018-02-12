Global class QuickbookService {
    
    webservice static void Testservice(){
        //code=L011513869706FhpX11SGmrVXSDYcJIwYHi9Diw5gF6rEkrHsr&realmId=123145954537674
        //Q04cHV4K5M7fWiDgwhjHPL1K5hv7Gwfs95WSc268asXgeQET3L:RYM1ZY60mOASlrS8XUjjpH6zsXkuCyQouNvYgtz0
        String client_id ='Q04cHV4K5M7fWiDgwhjHPL1K5hv7Gwfs95WSc268asXgeQET3L';
        String Client_secret = 'RYM1ZY60mOASlrS8XUjjpH6zsXkuCyQouNvYgtz0';
        blob b = blob.valueOf(client_id+':'+client_secret);
        String Body;
        //body ='grant_type=authorization_code&code=L011513869706FhpX11SGmrVXSDYcJIwYHi9Diw5gF6rEkrHsr&redirect_uri=http://localhost/';
        body ='grant_type=refresh_token&refresh_token=Q011522595879pj7bY60rti4hoWhgIfHMkeTQcmtfaDCfLrMXh&redirect_uri=http://localhost/';
        HttpRequest req = new HttpRequest();
        Http h = new Http();
        req.setEndpoint('https://oauth.platform.intuit.com/oauth2/v1/tokens/bearer');
        req.setMethod('POST');
        req.setHeader('Accept', 'application/json');
        req.setHeader('Authorization', 'Basic UTA0Y0hWNEs1TTdmV2lEZ3doakhQTDFLNWh2N0d3ZnM5NVdTYzI2OGFzWGdlUUVUM0w6UllNMVpZNjBtT0FTbHJTOFhVampwSDZ6c1hrdUN5UW91TnZZZ3R6MA==');
        req.setHeader('Content-Type', 'application/x-www-form-urlencoded');
        Req.setBody(body);
        HttpResponse res = new HttpResponse();
        res = h.send(req);
        System.debug('Response==='+res.getBody());
        JSON2Apex ja = new JSON2Apex();
        ja = (JSON2Apex)JSON.deserialize(res.getBody(), JSON2Apex.class);
         HttpRequest req1 = new HttpRequest();
        Http h1 = new Http();
        req1.setEndpoint('https://sandbox-quickbooks.api.intuit.com/v3/company/123145954537674/account/5');
        req1.setMethod('GET');
        req1.setHeader('Accept', 'application/json');
        req1.setHeader('Authorization','Bearer '+ja.access_token);
        HttpResponse res1 = new HttpResponse();
        res1 = h1.send(req1);
        System.debug('Response==='+res1.getBody());
        
    }

}