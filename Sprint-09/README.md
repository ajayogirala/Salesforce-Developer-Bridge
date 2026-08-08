# Student Placement Management System

## Sprint 09 – Lightning Web Components

## 1. Project Overview

The Student Placement Management System is a Salesforce-based application
developed to help students view available job opportunities and submit job
applications through a simple user interface.

In Sprint 9, Lightning Web Components (LWC) were introduced to connect the
existing Salesforce backend with a user-facing application.

The main workflow is:

Student → Eligible Jobs → Apply → Application Created

The objective is to hide the technical complexity of Salesforce objects,
Apex and database operations from the student and provide a simple
application experience.

---

## 2. Business Problem

Students need a simple way to view job opportunities and apply for jobs.

The user should not need to understand:

- Salesforce Objects
- Apex Classes
- SOQL
- Database operations
- Service classes

Instead, the student should see a simple interface containing available
jobs and an Apply button.

---

## 3. Sprint Objectives

The objectives of Sprint 9 are:

- Understand Lightning Web Components.
- Create reusable LWC components.
- Display jobs on the Student Record Page.
- Connect LWC with Apex.
- Implement an Apex Controller.
- Reuse the Application Service Layer.
- Implement the Apply functionality.
- Prevent duplicate applications.
- Display success and error messages.
- Test the complete application workflow.
- Deploy the components to Salesforce.
- Document the implementation in GitHub.

---

## 4. Technologies Used

- Salesforce
- Lightning Web Components
- Apex
- SOQL
- Salesforce CLI
- Visual Studio Code
- Git
- GitHub
- Lightning App Builder

---

## 5. Components Implemented

### Eligible Jobs – `eligibleJobs`

The `eligibleJobs` component is the parent LWC.

Responsibilities:

- Display available jobs.
- Receive the Student record context.
- Display multiple job records.
- Render individual Job Card components.
- Coordinate the job application interface.

---

### Job Card – `jobCard`

The `jobCard` component is the child LWC.

Responsibilities:

- Display an individual job.
- Display the Apply button.
- Handle the Apply action.
- Call Apex.
- Display success and error messages.
- Prevent repeated submission while processing.

---

### Application Controller – `ApplicationController`

The Apex Controller acts as the bridge between the LWC and the service
layer.

Responsibilities:

- Retrieve job records.
- Receive application requests from the LWC.
- Call `ApplicationService`.
- Return the result to the LWC.

---

### Application Service – `ApplicationService`

The Application Service contains the application business logic.

Responsibilities:

- Check duplicate applications.
- Create Application records.
- Update Application status.
- Maintain application-related business rules.

---

## 6. System Architecture

```text
Student
   |
   v
Student Record Page
   |
   v
eligibleJobs
   |
   v
jobCard
   |
   | Apply
   v
ApplicationController
   |
   v
ApplicationService
   |
   v
Application__c
