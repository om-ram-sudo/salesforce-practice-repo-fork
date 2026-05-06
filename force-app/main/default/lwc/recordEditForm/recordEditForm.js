import { LightningElement } from 'lwc';
import ObjApiName from '@salesforce/schema/Account';
import ObjName from '@salesforce/schema/Account.Name';
import ObjEmail from '@salesforce/schema/Account.Email__c';
import ObjPhone from '@salesforce/schema/Account.Phone';
import ObjType from '@salesforce/schema/Account.Type';

export default class RecordEditForm extends LightningElement {
    objApiName = ObjApiName;
    namefield = ObjName;
    emailfield = ObjEmail;
    phonefield = ObjPhone;
    typefield = ObjType;
    recordId = 'Created Record Id Will Be Display Here';
    handleOnSuccess(event){
        this.recordId = event.detail.id;
        window.alert('Record Created Successfully');
    }
}