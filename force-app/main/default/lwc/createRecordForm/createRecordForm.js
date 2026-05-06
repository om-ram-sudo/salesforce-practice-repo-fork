import { LightningElement } from 'lwc';
import { createRecord } from 'lightning/uiRecordApi';
import ObjApiName from '@salesforce/schema/Account';
import ObjName from '@salesforce/schema/Account.Name';
import ObjEmail from '@salesforce/schema/Account.Email__c';
import ObjPhone from '@salesforce/schema/Account.Phone';
import ObjType from '@salesforce/schema/Account.Type';

export default class CreateRecordForm extends LightningElement {

    recordId;
    nameField
    emailField
    PhoneField
    typeField
    handleOnNameChange(event){
        this.nameField = event.target.value;
    }
    handleOnEmailChange(event){
        this.emailField = event.target.value;
    }
    handleOnPhoneChange(event){
        this.PhoneField = event.target.value;
    }
    handleOnTypeChange(event){
        this.typeField = event.target.value;
    }
    handleOnClick(){
        const fields = {};
        fields[ObjName.fieldApiName] = this.nameField;
        fields[ObjEmail.fieldApiName] = this.emailField;
        fields[ObjPhone.fieldApiName] = this.PhoneField;
        fields[ObjType.fieldApiName] = this.typeField;
        const recordInput = {apiName:ObjApiName.objectApiName, fields};
        createRecord(recordInput)
        .then(result =>{
            this.recordId = result.id;
            window.alert('Record Created Successfully');
        })
    }
}