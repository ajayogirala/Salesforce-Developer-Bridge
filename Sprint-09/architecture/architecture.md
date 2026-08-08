
---

# 2. `architecture/architecture.md`

```markdown
# Sprint 09 – Architecture

## Overview

Sprint 9 connects the Salesforce backend with a Lightning Web Component
based user interface.

The architecture separates the presentation layer, controller layer,
business logic layer and database layer.

---

## Architecture Diagram

```text
                         STUDENT
                            |
                            v
                  Student Record Page
                            |
                            v
                      eligibleJobs
                       Parent LWC
                            |
                            v
                        jobCard
                       Child LWC
                            |
                         Apply
                            |
                            v
                 ApplicationController
                            |
                            v
                  ApplicationService
                            |
                 +----------+----------+
                 |                     |
                 v                     v
          Duplicate Check       Create Application
                 |                     |
                 +----------+----------+
                            |
                            v
                     Application__c
---

# 2. `architecture/architecture.md`

```markdown
# Sprint 09 – Architecture

## Overview

Sprint 9 connects the Salesforce backend with a Lightning Web Component
based user interface.

The architecture separates the presentation layer, controller layer,
business logic layer and database layer.

---

## Architecture Diagram

```text
                         STUDENT
                            |
                            v
                  Student Record Page
                            |
                            v
                      eligibleJobs
                       Parent LWC
                            |
                            v
                        jobCard
                       Child LWC
                            |
                         Apply
                            |
                            v
                 ApplicationController
                            |
                            v
                  ApplicationService
                            |
                 +----------+----------+
                 |                     |
                 v                     v
          Duplicate Check       Create Application
                 |                     |
                 +----------+----------+
                            |
                            v
                     Application__c
