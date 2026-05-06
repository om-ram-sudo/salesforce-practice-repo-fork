import { LightningElement } from 'lwc';
import ObjApiName from '@salesforce/schema/Account';
import ObjName from '@salesforce/schema/Account.Name';
import ObjEmail from '@salesforce/schema/Account.Email__c';
import ObjPhone from '@salesforce/schema/Account.Phone';
import ObjType from '@salesforce/schema/Account.Type';

export default class RecordViewForm extends LightningElement {
    recordId = '001J400000O6u6qIAB';
    objectApiName = ObjApiName;
    namefield = ObjName;
    emailfield = ObjEmail;
    phonefield = ObjPhone;
    typefield = ObjType;
}