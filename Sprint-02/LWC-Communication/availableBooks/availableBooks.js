import { LightningElement } from 'lwc';

export default class AvailableBooks extends LightningElement {

    recordId = '';

    message = 'Waiting for Child Message';

    handleMessage(event) {

        this.message = event.detail;

    }

}
