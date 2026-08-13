# Library Management / Placement Management System

## Overview

This project is a Salesforce-based management system designed to manage students, jobs and applications.

The system provides a centralized platform for managing student information, job opportunities, eligibility and job applications.

## Problem Statement

Traditional placement management can involve manual tracking of student information, job eligibility and applications.

This application automates these processes using Salesforce.

## Users

The major users are:

- Students
- Placement administrators
- Recruiters / administrators

## Main Salesforce Objects

- Student__c
- Job__c
- Application__c

## Technologies

- Salesforce
- Apex
- SOQL
- DML
- Lightning Web Components
- Flows
- Triggers
- Queueable Apex
- Batch Apex
- Scheduled Apex
- Salesforce CLI
- Git
- GitHub

## Architecture

The application follows a layered Salesforce architecture.

User
↓
Lightning Web Components
↓
Apex Controller / Service
↓
SOQL / DML
↓
Salesforce Database

## Lightning Web Components

### eligibleJobs

Displays jobs for which the student is eligible.

### jobCard

Displays job information and provides the application action.

## Apex

Apex is used for server-side business logic.

Responsibilities include:

- Retrieving records
- Validating business rules
- Creating applications
- Updating application status
- Processing asynchronous operations

## SOQL

SOQL is used to retrieve required Salesforce data.

Examples include:

- Student details
- Job details
- Application details
- Eligibility information

## DML

DML is used to create and update Salesforce records.

## Automation

The system uses Salesforce automation and Apex asynchronous processing where required.

## Integration

External communication can be handled through Salesforce integration mechanisms and Named Credentials.

Credentials should never be hard-coded.

## Git Workflow

Development follows:

main
↓
feature branch
↓
commit
↓
push
↓
Pull Request
↓
Code Review
↓
merge
↓
deployment

## Salesforce CLI

Authenticate:

```bash
sf org login web --alias placement-dev --set-default
