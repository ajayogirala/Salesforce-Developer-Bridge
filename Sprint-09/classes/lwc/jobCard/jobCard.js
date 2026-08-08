<template>

    <article class="slds-card slds-p-around_medium slds-m-bottom_medium">

        <h2 class="slds-text-heading_medium">
            {job.Name}
        </h2>

        <div class="slds-m-top_medium">

            <lightning-button
                label="Apply"
                variant="brand"
                data-job-id={job.Id}
                onclick={handleApply}
                disabled={isSubmitting}>
            </lightning-button>

        </div>

        <template if:true={isSubmitting}>

            <div class="slds-m-top_small">

                <lightning-spinner
                    size="small"
                    alternative-text="Submitting application">
                </lightning-spinner>

                <p>Submitting your application...</p>

            </div>

        </template>

        <template if:true={successMessage}>

            <div class="slds-text-color_success slds-m-top_small">

                ✓ {successMessage}

            </div>

        </template>

        <template if:true={errorMessage}>

            <div class="slds-text-color_error slds-m-top_small">

                {errorMessage}

            </div>

        </template>

    </article>

</template>
