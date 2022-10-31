@RestResource(urlMapping='/angulardemo/reset')
global without sharing class AngularDemoRestReset {

    @HttpGet
    global static void doGet() {
        delete [SELECT Id FROM Location__c LIMIT 50000];
    }
}