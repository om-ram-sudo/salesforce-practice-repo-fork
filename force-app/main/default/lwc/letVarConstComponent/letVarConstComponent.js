import { LightningElement } from 'lwc';

export default class LetVarConstComponent extends LightningElement {
    cardTitle = 'LWC let var const Component';
    cardHeading = 'Let Var Const Example';

    connectedCallback(){
        if(this.cardTitle){
            var myName = 'Prasad';
            
        }
        window.alert('Name By Var : '+myName);
       
    }
}