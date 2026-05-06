import { LightningElement } from 'lwc';

export default class ParentComponent extends LightningElement {
    changeName = "Ganesh";

    handleOnClick(){
        this.template.querySelector('c-child-component').changeName();
    }
}