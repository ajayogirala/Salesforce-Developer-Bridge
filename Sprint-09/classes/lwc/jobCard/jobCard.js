import { LightningElement, api } from 'lwc';

import submitApplication
    from '@salesforce/apex/ApplicationController.submitApplication';

export default class JobCard extends LightningElement {

    @api job;
    @api studentId;

    isSubmitting = false;

    successMessage;
    errorMessage;


    async handleApply(event) {

        const jobId = event.target.dataset.jobId;

        this.isSubmitting = true;
        this.successMessage = undefined;
        this.errorMessage = undefined;

        try {

            const result = await submitApplication({
                studentId: this.studentId,
                jobId: jobId
            });

            if (result === 'Application created successfully.') {

                this.successMessage =
                    'Application submitted successfully.';

                this.dispatchEvent(
                    new CustomEvent('apply', {
                        detail: {
                            jobId: jobId
                        }
                    })
                );

            } else {

                this.errorMessage = result;
            }

        } catch (error) {

            console.error(error);

            this.errorMessage =
                'We could not submit your application. Please try again.';

        } finally {

            this.isSubmitting = false;
        }
    }
}
