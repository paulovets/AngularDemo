import * as fs from "fs";

let testData = {
    "location": [
        {
        "Id": "1",
        "Name": "Minsk",
        "coordinates__Latitude__s": 53.9,
        "coordinates__Longitude__s": 27.56667,
        "comment__c": "Minsk"
        },
        {
        "Id": "2",
        "Name": "Gomel",
        "coordinates__Latitude__s": 52.4412,
        "coordinates__Longitude__s": 30.9878
        },
        {
        "Id": "3",
        "Name": "Grodno",
        "coordinates__Latitude__s": 53.6694,
        "coordinates__Longitude__s": 23.8131
        },
        {
        "Id": "4",
        "Name": "Vitebsk",
        "coordinates__Latitude__s": 55.1848,
        "coordinates__Longitude__s": 30.2016
        }
    ],
    "attachment": []
};

export function setupDb() {
    fs.writeFileSync('./src/json-server/db.json', JSON.stringify(testData));
}