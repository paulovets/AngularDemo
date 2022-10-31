//The underscores are Salesforce specific as well.
export class Location {
    Id: string;
    Name: string;
    comment__c: string;
    coordinates__Longitude__s: number;
    coordinates__Latitude__s: number;
    attributes;

    constructor(name, lng, lat) {

        //Salesforce specific.
        this.attributes = {
            type: 'Location__c'
        };
        this.Name = name;
        this.coordinates__Longitude__s = lng;
        this.coordinates__Latitude__s = lat;
    }
}