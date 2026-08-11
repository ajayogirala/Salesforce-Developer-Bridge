# Recruitment Management System – Salesforce

## 📌 Project Overview

The Recruitment Management System is a Salesforce-based application designed to manage the complete recruitment process.

The system manages:

- Candidates
- Jobs
- Applications
- Candidate selection
- Application status
- Recruitment workflow
- Automation
- Apex logic
- Triggers
- Lightning Web Components
- External API integration
- Queueable Apex
- Salesforce security
- Reports and analytics

The project was developed using Salesforce Platform technologies and Salesforce DX with VS Code.

---

# 🎯 Project Objectives

The main objectives of this project are:

1. Manage candidate information.
2. Manage job openings.
3. Manage candidate applications.
4. Track application status.
5. Automate recruitment processes.
6. Implement Salesforce validation and automation.
7. Use Apex for custom business logic.
8. Use triggers for automated processing.
9. Build Lightning Web Components.
10. Integrate Salesforce with an external recruitment API.
11. Implement secure API authentication.
12. Test and deploy the complete solution using Salesforce CLI.

---

# 🏗️ Technology Stack

| Technology | Purpose |
|---|---|
| Salesforce | CRM Platform |
| Apex | Backend business logic |
| Lightning Web Components | User interface |
| SOQL | Data querying |
| SOSL | Record searching |
| Salesforce Flow | Automation |
| Apex Trigger | Event-based automation |
| Queueable Apex | Asynchronous processing |
| Named Credential | Secure API endpoint |
| External Credential | Authentication |
| Permission Set | Access control |
| VS Code | Development |
| Salesforce CLI | Deployment and testing |
| Git & GitHub | Version control |

---

# 🧩 Salesforce Architecture

```text
                    Recruitment Management System
                              |
              +---------------+---------------+
              |               |               |
           Candidates        Jobs        Applications
              |               |               |
              +---------------+---------------+
                              |
                         Automation
                              |
              +---------------+---------------+
              |               |               |
            Flow           Trigger          Apex
                                              |
                                      Queueable Apex
                                              |
                                      Named Credential
                                              |
                                      External Credential
                                              |
                                      External API
