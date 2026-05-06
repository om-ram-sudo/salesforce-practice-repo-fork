import { LightningElement } from 'lwc';
import createRecord from '@salesforce/apex/CreateAccRecByCallApex.createRecord';
export default class CreateRecordByCallingApex extends LightningElement {
    recordId;
    accountName;
    accountIndustry;
    handleOnNameChange(event){
        this.accountName = event.target.value;
    }
    handleOnIndustryChange(event){
        this.accountIndustry = event.target.value;
    }

    handleOnClick(){
        createRecord({accName:this.accountName, accIndustry:this.accountIndustry})
        .then(result =>{
            this.recordId = result[0].Id;
            window.alert('Record Created');
        })
        .catch(error =>{
            console.log('Error: ' + error);
        });
    }
}