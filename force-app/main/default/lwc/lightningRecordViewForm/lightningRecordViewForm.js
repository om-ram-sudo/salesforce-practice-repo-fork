import { LightningElement } from 'lwc';
import objectApiName from '@salesforce/schema/Account';
import objectName from '@salesforce/schema/Account.Name';
import objectEmail from '@salesforce/schema/Account.Email__c';
import objectPhone from '@salesforce/schema/Account.Phone';
import objectType from '@salesforce/schema/Account.Type';
import objectIndustry from '@salesforce/schema/Account.Industry';

export default class LightningRecordViewForm extends LightningElement {
    recordId = '0015j000018VmPUAA0';
    objectApiName = objectApiName;
    nameField = objectName;
    phoneField = objectPhone;
    emailField = objectEmail;
    typeField = objectType;
    industryField = objectIndustry;
}