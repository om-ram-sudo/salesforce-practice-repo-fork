import { LightningElement,track } from 'lwc';
import getAccRecList from '@salesforce/apex/impeDemo.getAccRecList';
const col = [
    {label:'Account Rec Id', fieldName:'Id'},
    {label:'Account Name', fieldName:'Name'}
];
export default class ImperativeComponent extends LightningElement {
    @track DATA = [];
    @track COLUMNS = col;
    connectedCallback(){
        getAccRecList()
        .then(result => {
            this.DATA = result;
        })
        .catch(error => {
            console.log("Error Occoured");
        })
    }

}