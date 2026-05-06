import { LightningElement, wire } from 'lwc';
import getAccountRecord from '@salesforce/apex/LWCAccRec.getAccountRecord';

const columns = [
    {label:'Account Name', fieldName: 'Name', editable: true},
    {label:'Account Phone', fieldName: 'Phone', editable: true},
    {label:'Account Email', fieldName: 'Email__c', editable: true}
];
export default class DataTableWithInlineEditing extends LightningElement {
    columns = columns;
    data = [];
    saveDraftValues = [];

    @wire(getAccountRecord)

    wiredAccountRecords(result){
        if(result.error){
            this.data = undefined;
        }else if(result.data){
            this.data = result.data;
        }
    }

}