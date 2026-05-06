import { LightningElement } from 'lwc';
import objectApiName from '@salesforce/schema/Account';
import objectName from '@salesforce/schema/Account.Name';
import objectEmail from '@salesforce/schema/Account.Email__c';
import objectPhone from '@salesforce/schema/Account.Phone';
import objectType from '@salesforce/schema/Account.Type';
import objectIndustry from '@salesforce/schema/Account.Industry';

export default class LightningRecordEditForm extends LightningElement {
    recordId = 'Created Record Id Will Be Display Here ';
    objectApiName = objectApiName;
    nameField = objectName;
    emailField = objectEmail;
    phoneField = objectPhone;
    typeField = objectType;
    industryField = objectIndustry;
    handleOnSuccess(event){
        this.recordId = event.detail.id;
        window.alert('Account Successfully Created');
    }
}