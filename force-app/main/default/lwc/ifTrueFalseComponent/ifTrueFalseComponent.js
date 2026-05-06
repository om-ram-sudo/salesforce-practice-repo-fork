import { LightningElement,track } from 'lwc';

export default class IfTrueFalseComponent extends LightningElement {

    @track onClickLabelChange = "Show";
    @track cardVisible = false;
    handleOnClick(event){
        const label = event.target.label;

        if(label === 'Show'){
            this.onClickLabelChange = 'Hide';
            this.cardVisible = true;
        }else if(label === 'Hide'){
            this.onClickLabelChange = 'Show';
            this.cardVisible = false;
        }
    }
    
}