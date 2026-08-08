import { LightningElement, api, wire } from 'lwc';

import getEligibleJobs
    from '@salesforce/apex/ApplicationController.getEligibleJobs';

export default class EligibleJobs extends LightningElement {

    @api recordId;

    jobs = [];
    error;
    isLoading = true;


    @wire(getEligibleJobs, { studentId: '$recordId' })
    wiredJobs({ data, error }) {

        this.isLoading = false;

        if (data) {

            this.jobs = data;
            this.error = undefined;

        } else if (error) {

            this.jobs = [];
            this.error = error;

            console.error(error);
        }
    }


    get showJobs() {

        return !this.isLoading &&
               !this.error &&
               this.jobs.length > 0;
    }


    get showEmpty() {

        return !this.isLoading &&
               !this.error &&
               this.jobs.length === 0;
    }


    handleApply(event) {

        console.log(
            'Apply event received:',
            event.detail
        );
    }
}
