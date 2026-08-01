
import { LightningElement, api } from 'lwc';

export default class BookChild extends LightningElement {

    @api recordId;

    sendMessage() {

        const event = new CustomEvent(

            'showmessage',

            {

                detail: 'Book Issued Successfully'

            }

        );

        this.dispatchEvent(event);

    }

}
