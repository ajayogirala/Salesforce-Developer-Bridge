
---

# 3. `learning-notes/LWC-notes.md`

```markdown
# Sprint 09 – LWC Learning Notes

## What is LWC?

Lightning Web Components is Salesforce's framework for building modern,
reusable user interfaces.

LWC components are mainly built using:

- HTML
- JavaScript
- Metadata XML

---

## HTML

The HTML file defines the component's user interface.

In this project HTML is used for:

- Job cards
- Buttons
- Messages
- Loading indicators
- Application results

---

## JavaScript

JavaScript controls the behaviour of the component.

It handles:

- Data
- Events
- User interaction
- Apex calls
- Success handling
- Error handling

---

## Metadata XML

The metadata XML file defines how the component is exposed in Salesforce.

The `eligibleJobs` component is exposed so it can be added to a Lightning
Record Page.

---

## Parent and Child Components

The project uses two LWC components:

```text
eligibleJobs
     |
     +---- jobCard
     +---- jobCard
