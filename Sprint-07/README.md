# Sprint 07 – Building Software That Survives Scale

## Overview

In this sprint, the Placement Management System was redesigned to handle multiple records efficiently using Salesforce Bulkification principles. The primary focus was to build scalable Apex code that works safely for one record as well as hundreds of records while respecting Salesforce Governor Limits.

Instead of writing code that processes records individually, this sprint introduced collection-based processing using Lists, Sets, and Maps to create enterprise-level Apex solutions.

---

# Sprint Objectives

- Understand Salesforce Governor Limits.
- Learn the concept of Bulkification.
- Process multiple records safely using collections.
- Eliminate SOQL queries inside loops.
- Eliminate DML operations inside loops.
- Design bulk-safe Apex classes.
- Implement a clean Trigger architecture.
- Improve application performance and scalability.

---

# Engineering Concepts Learned

## Governor Limits

Salesforce is a multi-tenant cloud platform where multiple organizations share the same resources. Governor Limits ensure that one transaction does not consume excessive platform resources.

Important Governor Limits include:

- Maximum SOQL Queries
- Maximum DML Statements
- CPU Time
- Heap Size
- Query Rows

These limits encourage developers to write efficient and scalable Apex code.

---

## Bulkification

Bulkification is the process of designing Apex code to handle collections of records instead of processing one record at a time.

Instead of:

Application → Query → Application → Query

We use:

Applications
↓
Collect IDs
↓
One SOQL Query
↓
Store in Map
↓
Process Records

This approach significantly improves application performance.

---

## Collections Used

### List

Used to store multiple records.

Example:

List<Application__c> applications;

---

### Set

Used to collect unique IDs.

Example:

Set<Id> studentIds;

Benefits:

- Removes duplicate IDs
- Reduces unnecessary queries

---

### Map

Used for fast record retrieval.

Example:

Map<Id, Student__c> studentsById;

Benefits:

- Constant-time lookup
- Eliminates repeated SOQL queries

---

# Trigger Design

Instead of placing business logic directly inside the Trigger, the Trigger delegates processing to the ApplicationService class.

Trigger

↓

ApplicationService

↓

Business Logic

This architecture improves readability, maintainability, and testing.

---

# Apex Components

## ApplicationService.cls

Implemented methods:

- hasAlreadyApplied()
- createApplication()
- updateApplicationStatus()
- validateApplications()

Responsibilities:

- Prevent duplicate applications
- Create application records
- Update application status
- Validate application data before insert

---

## ApplicationTrigger.trigger

Trigger Events:

- Before Insert

Responsibilities:

- Receive Trigger.new records
- Call ApplicationService
- Keep Trigger logic minimal

---

# Bulk Processing Pattern

The following engineering pattern was implemented:

1. Receive Trigger.new records
2. Collect Student IDs
3. Collect Job IDs
4. Query Students once
5. Query Jobs once
6. Store records in Maps
7. Validate Applications
8. Collect updates
9. Perform one DML operation

---

# SOQL Best Practice

❌ Avoid:

SOQL inside loops

Reason:

One query executes for every record and can exceed Salesforce Governor Limits.

✔ Preferred:

Collect IDs first

↓

Execute one SOQL query

↓

Store records in Map

↓

Process records using the Map

---

# DML Best Practice

❌ Avoid:

update record;

inside loops

Reason:

Consumes one DML statement for every record.

✔ Preferred:

Collect records into a List

↓

Perform one update statement

---

# Project Structure

Sprint-07/

├── Apex/

│ ├── ApplicationService.cls

│ ├── ApplicationService.cls-meta.xml

│ ├── ApplicationTrigger.trigger

│ └── ApplicationTrigger.trigger-meta.xml

│

├── Documentation/

│ ├── Bulkification.md

│ ├── GovernorLimits.md

│ ├── TriggerArchitecture.md

│ ├── TriggerNew.md

│ └── SetsAndMaps.md

│

├── Screenshots/

│ ├── Students.png

│ ├── Jobs.png

│ ├── Applications.png

│ ├── Trigger.png

│ ├── ApplicationService.png

│ └── Validation.png

│

└── README.md

---

# Testing Performed

✔ Created Student records

✔ Created Job records

✔ Created Application records

✔ Prevented duplicate applications

✔ Verified Trigger execution

✔ Verified ApplicationService methods

✔ Verified validation logic

✔ Verified bulk-safe processing

---

# Learning Outcomes

After completing this sprint, I learned:

- Why Salesforce uses Governor Limits.
- How Bulkification improves application performance.
- Why SOQL should never be placed inside loops.
- Why DML operations should be executed outside loops.
- How Lists, Sets, and Maps improve scalability.
- How Trigger.new processes collections of records.
- How to design bulk-safe Apex code.
- How to separate Trigger logic from business logic.
- How to write maintainable Salesforce applications.

---

# Skills Practiced

- Apex Programming
- Salesforce Triggers
- Governor Limits
- Bulkification
- Lists
- Sets
- Maps
- SOQL
- DML
- Trigger Architecture
- Business Logic Separation
- Salesforce Development Best Practices

---

# Conclusion

Sprint 07 focused on transforming simple Apex code into scalable, production-ready Salesforce applications. By applying Bulkification techniques, Governor Limit awareness, and clean Trigger architecture, the Placement Management System became capable of processing large volumes of records efficiently while following Salesforce best practices.
