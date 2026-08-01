# 📚 Library Management System – Salesforce

## 📌 Project Overview

The Library Management System is a Salesforce CRM application developed as part of the Salesforce Developer Bridge Program. It automates library operations such as managing books, members, book issues, returns, and fine records using Salesforce technologies like Apex, SOQL, Triggers, and Lightning Web Components (LWC). The project follows Salesforce development best practices, including custom objects, object relationships, trigger handler patterns, and reusable Lightning components. :contentReference[oaicite:0]{index=0}

---

## 🚀 Features

- Manage Books
- Manage Library Members
- Issue and Return Books
- Maintain Fine Records
- Execute SOQL Queries
- Prevent Duplicate Book Records
- Automatically Update Book Status
- Display Records Using Lightning Web Components (LWC)

---

## 🛠️ Technologies Used

- Salesforce CRM
- Apex Programming
- SOQL
- Lightning Web Components (LWC)
- Salesforce DX
- Visual Studio Code
- Git & GitHub

---

## 📂 Custom Objects

| Object | Description |
|---------|-------------|
| Book__c | Stores book information |
| Member__c | Stores library member details |
| Book_Issue__c | Tracks issued books |
| Fine__c | Maintains fine details |

---

# 📖 Project Workflow

## Task 1 – Custom Data Model

Designed and implemented a custom Salesforce data model by creating the following custom objects:

- Book
- Member
- Book Issue
- Fine

Configured custom fields and established relationships between the objects to represent a real-world library management system. :contentReference[oaicite:1]{index=1}

---

## Task 2 – Apex Basics

Implemented Apex programs using Execute Anonymous Window.

Practiced:

- Variables
- Data Types
- Loops
- Conditional Statements
- Collections
- Debug Logs

Verified outputs using Salesforce Debug Logs. :contentReference[oaicite:2]{index=2}

---

## Task 3 – SOQL Queries

Implemented multiple SOQL queries including:

- SELECT Queries
- WHERE Clause
- ORDER BY
- LIMIT
- Relationship Queries
- Aggregate Queries
- COUNT()
- GROUP BY

Retrieved data from custom objects successfully without syntax errors. :contentReference[oaicite:3]{index=3}

---

## Task 4 – Apex Trigger

Developed Apex Triggers using the Trigger Handler Pattern.

### Files Created

- BookTrigger.trigger
- BookTriggerHandler.cls

Implemented:

- Before Insert Trigger
- Duplicate Record Validation
- After Update Trigger
- Automatic Book Status Update

The business logic was separated into a handler class following Salesforce best practices. :contentReference[oaicite:4]{index=4}

---

## Task 5 – Lightning Web Component (LWC)

Created a reusable Lightning Web Component named **bookList**.

Features:

- Displays Book Records
- Uses @wire to retrieve Salesforce data
- Integrated into Lightning App Builder
- Dynamic Record Display

The component successfully renders real-time data from the custom Book object. :contentReference[oaicite:5]{index=5}

---

# 📁 Project Structure

```
LibraryManagement
│
├── force-app
│   ├── main
│   │   ├── default
│   │   │   ├── classes
│   │   │   ├── triggers
│   │   │   ├── lwc
│   │   │   ├── objects
│   │   │   ├── permissionsets
│   │   │   └── layouts
│
├── sfdx-project.json
├── package.json
└── README.md
```

---

# ⚙️ Installation

Clone the repository

```bash
git clone https://github.com/yourusername/LibraryManagement.git
```

Open in Visual Studio Code

Authorize Salesforce Org

```bash
sf org login web
```

Deploy the project

```bash
sf project deploy start
```

Open your Salesforce Org and verify the application.

---

# 📸 Screenshots

- Custom Objects
- Object Relationships
- SOQL Query Results
- Trigger Execution
- Lightning Web Component
- VS Code Deployment

*(Add screenshots inside the `screenshots/` folder.)*

---

# 🎯 Learning Outcomes

- Salesforce Custom Objects
- Object Relationships
- Apex Programming
- SOQL
- Apex Triggers
- Trigger Handler Pattern
- Lightning Web Components
- Salesforce DX
- GitHub Version Control

---

# 🔮 Future Enhancements

- Flow Builder Automation
- Approval Process
- Reports & Dashboards
- Email Notifications
- Validation Rules
- Record-Level Security
- Apex Test Classes
- Responsive Lightning UI

---

# 👨‍💻 Author

**Ajay Ogirala**

B.Tech – Information Technology

Salesforce Developer | Apex | LWC | SOQL | Salesforce DX | GitHub

---

## ⭐ Support

If you found this project useful, please ⭐ the repository and share your feedback.
