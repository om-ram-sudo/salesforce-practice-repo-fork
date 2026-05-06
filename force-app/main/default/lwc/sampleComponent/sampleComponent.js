import { LightningElement } from 'lwc';

export default class SampleComponent extends LightningElement {
    myTitle = "Sample LWC Card";
    myInfo = "Welcome to LWC World";
    
    handleOnClick(){
        window.alert("Hii Prasad "+this.myInfo);
    }
}