## The demo angular2+ based app deployed within Salesforce env
[The app is deployed in Salesforce Site](https://jenya-pavlovets-dev-ed.my.salesforce-sites.com/AngularDemo)

## Description
The idea makes end users able to handle the locations within two views: list view; map view

#### The app features
1. View the locations within the map
2. View the location within the list
3. Add new locations by typing into the relavnt input(google places autocomplete)
4. Filter locations by typing into the relevant input
5. Add the comment to the location via the poping-up dialog, which is triggered by the click on the row item/map's pin
6. Upload(via the button/drang-and-drop)/delete/download the attachment on the location via the same poping-up dialog

[Features demo video](https://youtu.be/9EmcZcqw_2I)

#### Unit tests
The unit test examples are implemented for the next app's parts:
1. filter-new-location-actions.component.ts
2. app.component.ts
3. location.service.ts

#### e2e tests
To execute the e2e tests the [json-server](https://github.com/typicode/json-server) is used, should be istalled prio the execution

# Important 
Salesforce dev env. provides the limited amount of the storage(5mb). Therefore don't upload big files, please(attachments in kbs should be fine).
In case of permanent failures upon persist operations - visit the next [link](https://jenya-pavlovets-dev-ed.my.salesforce-sites.com/services/apexrest/angulardemo/reset), please. It execuetes the clean-up operation within the env and redirect to the app afterwards.
