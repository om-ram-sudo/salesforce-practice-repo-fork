import { LightningElement,api } from 'lwc';

export default class ChildComponent extends LightningElement {

    @api myInfo = "Prasad";

    @api changeName(){
        this.myInfo = "Ganesh";
    }
}