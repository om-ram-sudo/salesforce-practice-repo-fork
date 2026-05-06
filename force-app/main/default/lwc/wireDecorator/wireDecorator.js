import { LightningElement,wire,track } from 'lwc';
import getAccountRecordList from '@salesforce/apex/wireDemo.getAccountRecordList';
const columns = [
    {label:'Account Record Id', fieldName:'Id'},
    {label:'Account Name', fieldName:'Name'},
];
export default class WireDecorator extends LightningElement {

    @track DATA = [];
    @track COLUMNS = columns;
    @wire(getAccountRecordList)
    demo({data, error}){
        if(data){
            this.DATA = data;
        }else if(error){
            console.log("Error Occoured");
        }
    }
}