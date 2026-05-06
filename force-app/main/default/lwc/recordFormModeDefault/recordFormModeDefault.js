import { LightningElement } from 'lwc';
import ObjApiName from '@salesforce/schema/Account';
import ObjName from '@salesforce/schema/Account.Name';
import ObjEmail from '@salesforce/schema/Account.Email__c';
import ObjPhone from '@salesforce/schema/Account.Phone';
import ObjType from '@salesforce/schema/Account.Type';

export default class RecordFormModeDefault extends LightningElement {
    objectApiName = ObjApiName;
    recordId = '001J400000S6pEsIAJ';
    fields = [ObjName, ObjEmail, ObjPhone, ObjType];

}