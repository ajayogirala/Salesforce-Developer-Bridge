
# Sprint 03 – Validation Rules & Record-Triggered Flows

## Overview

This sprint implements automation for the Library Management System using Salesforce declarative tools.

### Topics Covered

- Record-Triggered Flows
- Validation Rules
- Flow Builder
- Data Quality Enforcement

---

## Project Modules

### 1. Book Issue Date Flow

Automatically populates the Issue Date whenever a Book Issue record is created.

**Concepts**
- Record-Triggered Flow
- Fast Field Updates
- Assignment Element

---

### 2. Send Book Issue Email Flow

Automatically sends an email notification after a Book Issue record is created.

**Concepts**
- After Save Flow
- Send Email Action
- Error Handling
- Flow Activation

---

### 3. Book Status Update Flow

Updates the related Book record status to **Issued**.

**Concepts**
- Update Records
- Related Records
- Record-Triggered Flow

---

### 4. Validation Rules

Implemented Rules

- Book_Available
- Book_Required
- Check_Return_Date
- Invalid_Return_Date
- Member_Required

---

## Technologies Used

- Salesforce Flow Builder
- Validation Rules
- Object Manager
- Salesforce Developer Edition

---

## Learning Outcomes

- Before Save Flow
- After Save Flow
- Assignment Element
- Update Records
- Send Email Action
- Validation Rules
- Declarative Automation
