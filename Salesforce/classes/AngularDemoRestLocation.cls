@RestResource(urlMapping='/angulardemo/location/*')
global without sharing class AngularDemoRestLocation {

    @HttpGet
    global static List<Location__c> doGet() {
        return [SELECT Id, Name, comment__c, coordinates__Longitude__s, coordinates__Latitude__s FROM Location__c LIMIT 50000];
    }
  
    @HttpPost
    global static Location__c doPost() {
        String requestBody = RestContext.request.requestBody.toString();
        Location__c location = (Location__c)JSON.deserialize(requestBody, Location__c.class);
        upsert location;

        return location;
    }

    @HttpPut
    global static Location__c doPut() {
        String requestBody = RestContext.request.requestBody.toString();
        Location__c location = (Location__c)JSON.deserialize(requestBody, Location__c.class);
        upsert location;

        return location;
    }

    @HttpDelete
    global static void doDelete() {
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        String locationId = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        delete [SELECT Id FROM Location__c WHERE Id = :locationId];
    }
}