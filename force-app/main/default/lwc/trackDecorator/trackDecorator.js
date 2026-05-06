import { LightningElement,track } from 'lwc';

export default class TrackDecorator extends LightningElement {

    @track fullName = {fname:"", lname:""};

    handleOnChange(event){
        const field = event.target.name;
        if(field === 'firstName'){
            this.fullName.fname = event.target.value;
        }else if(field === 'lastName'){
            this.fullName.lname = event.target.value;
        }
    }
}