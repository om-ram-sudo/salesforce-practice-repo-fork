import { LightningElement } from 'lwc';

export default class ButtonComponent extends LightningElement {
    myTitle = 'Button Component';
    myHeading = 'Function Example';
    handleOnClick(){
        window.alert('Button Clicked');
    }
}