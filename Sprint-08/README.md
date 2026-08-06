# Sprint 08 – Asynchronous Apex

## Overview

Sprint 08 focuses on implementing Asynchronous Apex to execute operations in the background without affecting the user experience. Asynchronous processing allows Salesforce applications to handle long-running tasks efficiently while respecting Governor Limits.

In this sprint, I implemented Queueable Apex, Future Methods, Batch Apex, and Scheduled Apex to process application records asynchronously.

---

# Sprint Objectives

- Understand synchronous and asynchronous processing.
- Learn the use of Future Methods.
- Implement Queueable Apex.
- Process large datasets using Batch Apex.
- Schedule automated jobs using Scheduled Apex.
- Improve application performance.
- Follow Salesforce asynchronous processing best practices.

---

# What is Asynchronous Apex?

Asynchronous Apex executes operations in the background after the current transaction completes. It is useful for tasks that take longer to process or need to run independently from the user's request.

### Benefits

- Improves user experience
- Handles long-running operations
- Processes large data volumes
- Reduces transaction execution time
- Works within Salesforce Governor Limits

---

# Types of Asynchronous Apex

## 1. Future Method

Future Methods execute static methods asynchronously after the current transaction completes.

### Characteristics

- Uses the `@future` annotation.
- Runs in a separate transaction.
- Accepts only primitive data types or collections of primitive types.
- Suitable for background processing and callouts.

### Class Created

- `ApplicationFutureService.cls`

### Purpose

- Process Application records asynchronously.
- Retrieve Application details.
- Demonstrate background execution using Future Methods.

---

## 2. Queueable Apex

Queueable Apex allows complex background processing using Apex classes that implement the `Queueable` interface.

### Characteristics

- Supports constructors.
- Accepts complex objects.
- Can chain Queueable jobs.
- Easier to monitor through Apex Jobs.

### Class Created

- `OfferPostProcessingJob.cls`

### Purpose

- Process an Application record after submission.
- Execute background operations using `System.enqueueJob()`.

---

## 3. Batch Apex

Batch Apex processes large numbers of records in smaller batches.

### Characteristics

- Processes records in chunks.
- Handles thousands of records efficiently.
- Consists of `start()`, `execute()`, and `finish()` methods.

### Class Created

- `PlacementCategoryBatch.cls`

### Purpose

- Process multiple Application records.
- Demonstrate scalable record processing.

---

## 4. Scheduled Apex

Scheduled Apex automates Apex execution at a specified date and time.

### Characteristics

- Implements the `Schedulable` interface.
- Uses CRON expressions.
- Can automatically execute Batch Apex.

### Class Created

- `ExpiredJobScheduler.cls`

### Purpose

- Schedule background processing.
- Automatically execute Batch Apex at a scheduled time.

---

# Apex Components

## OfferPostProcessingJob.cls

Responsibilities

- Implements Queueable Apex.
- Retrieves Application records.
- Executes background processing.
- Logs execution using Debug statements.

---

## ApplicationFutureService.cls

Responsibilities

- Implements Future Method.
- Processes Application records asynchronously.
- Demonstrates background execution.

---

## PlacementCategoryBatch.cls

Responsibilities

- Implements Database.Batchable.
- Processes Application records in batches.
- Demonstrates scalable processing.

---

## ExpiredJobScheduler.cls

Responsibilities

- Implements Schedulable interface.
- Starts Batch Apex automatically.
- Demonstrates scheduled execution.

---

# Project Structure

```
Sprint-08/
│
├── Apex/
│   ├── OfferPostProcessingJob.cls
│   ├── OfferPostProcessingJob.cls-meta.xml
│   ├── ApplicationFutureService.cls
│   ├── ApplicationFutureService.cls-meta.xml
│   ├── PlacementCategoryBatch.cls
│   ├── PlacementCategoryBatch.cls-meta.xml
│   ├── ExpiredJobScheduler.cls
│   └── ExpiredJobScheduler.cls-meta.xml
│
├── Screenshots/
│   ├── QueueableClass.png
│   ├── FutureMethod.png
│   ├── BatchApex.png
│   ├── ScheduledApex.png
│   ├── ExecuteAnonymous.png
│   ├── ApexJobs.png
│   ├── ScheduledJobs.png
│   └── DebugLogs.png
│
└── README.md
```

---

# Testing Performed

### Queueable Apex

- Created Queueable Apex class.
- Executed using `System.enqueueJob()`.
- Verified execution through Debug Logs.
- Confirmed completion in Apex Jobs.

---

### Future Method

- Created Future Method.
- Executed using Execute Anonymous.
- Verified background execution.
- Reviewed Debug Logs.

---

### Batch Apex

- Executed Batch Apex using `Database.executeBatch()`.
- Verified processing of Application records.
- Checked execution status in Apex Jobs.

---

### Scheduled Apex

- Scheduled the Batch Apex job.
- Verified scheduled execution.
- Checked Scheduled Jobs in Salesforce Setup.

---

# Skills Practiced

- Apex Programming
- Future Methods
- Queueable Apex
- Batch Apex
- Scheduled Apex
- Asynchronous Processing
- Governor Limits
- Execute Anonymous
- Apex Jobs
- Debug Logs
- Salesforce Development Best Practices

---

# Learning Outcomes

After completing Sprint 08, I learned:

- The difference between synchronous and asynchronous processing.
- How Future Methods execute background operations.
- How Queueable Apex supports advanced asynchronous processing.
- How Batch Apex processes large datasets efficiently.
- How Scheduled Apex automates recurring tasks.
- How to monitor asynchronous jobs using Apex Jobs.
- How to improve application scalability and performance.

---

# Conclusion

Sprint 08 introduced the core concepts of Asynchronous Apex in Salesforce. By implementing Future Methods, Queueable Apex, Batch Apex, and Scheduled Apex, I learned how to execute background operations efficiently, process large datasets, automate recurring jobs, and build scalable Salesforce applications following platform best practices.
