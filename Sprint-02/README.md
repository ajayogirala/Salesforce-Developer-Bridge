
# Sprint 02 – Apex Collections, Governor Limits, Asynchronous Apex & LWC Communication

## Overview

This sprint covers advanced Apex programming concepts and Lightning Web Component communication. The implementation includes Apex Collections, Governor Limits, Bulkification, Asynchronous Apex using Future Methods, and Parent–Child communication in Lightning Web Components.

---

## Block 1 – Apex Collections

### Topics

- List<String>
- Set<Id>
- Map<Id, Book__c>

### Files

```
Apex-Collections/
├── ListExample.apex
├── SetExample.apex
└── MapExample.apex
```

### Learning

- Working with Lists
- Removing duplicates using Set
- Retrieving records using Map

---

## Block 2 – Governor Limits & Bulkification

### Topics

- SOQL inside Loop
- Governor Limits
- Bulkified Trigger

### Files

```
Governor-Limits-Bulkification/
├── BookTrigger.trigger
├── BookTrigger.apex
└── BulkifiedTrigger.trigger
```

### Learning

- Understand Governor Limits
- Avoid SOQL inside loops
- Write Bulkified Apex Triggers

---

## Block 3 – Asynchronous Apex

### Topics

- @future Annotation
- Future Methods
- Execute Anonymous

### Files

```
Asynchronous-Apex/
├── FutureExample.apex
└── ExecuteAnonymous.apex
```

### Learning

- Execute asynchronous operations
- Update records using Future Methods

---

## Block 4 – Lightning Web Components

### Components

- availableBooks
- bookParent
- bookChild

### Communication

- Parent → Child using @api
- Child → Parent using Custom Events

### Files

```
LWC-Communication/
├── availableBooks
├── bookParent
└── bookChild
```

---

## Documentation

Contains the complete Day 2 implementation report and screenshots.

```
Documentation/
├── Day2-Implementation-Report.pdf
└── Screenshots
```

---

## Technologies Used

- Salesforce Platform
- Apex
- SOQL
- Lightning Web Components
- VS Code
- Developer Console

---

## Learning Outcomes

- Apex Collections (List, Set, Map)
- Governor Limits
- Bulkification
- Future Methods
- Asynchronous Apex
- Parent–Child Communication
- Salesforce Best Practices
