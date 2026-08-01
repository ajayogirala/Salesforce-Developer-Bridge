# Member_Required Validation Rule

## Purpose

Ensures every Book Issue record has an associated Member.

## Formula

```text
ISBLANK(Member__c)
```

## Error Message

Please select a Member.

## Error Location

Top of Page

## Learning Outcome

- Prevents incomplete Book Issue records.
- Enforces mandatory member selection.
