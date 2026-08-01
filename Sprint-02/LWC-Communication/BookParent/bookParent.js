import { LightningElement } from 'lwc';

export default class BookParent extends LightningElement {

    recordId = '';

    message = 'Waiting...';

    handleMessage(event){

        this.message = event.detail;

    }

}
