import { LightningElement } from 'lwc';
import ObjectApiName from '@salesforce/schema/Account';
import ObjectName from '@salesforce/schema/Account.Name';
import ObjectEmail from '@salesforce/schema/Account.Email__c';
import ObjectPhone from '@salesforce/schema/Account.Phone';
import ObjectType from '@salesforce/schema/Account.Type';
import ObjectIndustry from '@salesforce/schema/Account.Industry';

export default class LightningRecordDefaultMode extends LightningElement {

    objectApiName = ObjectApiName;
    record = '001J400000S6yceIAB';
    fields = [ObjectName, ObjectEmail, ObjectPhone, ObjectType, ObjectIndustry];
}