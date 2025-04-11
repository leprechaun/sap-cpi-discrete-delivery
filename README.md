# SAP-CPI-Discreet-Delivery

> Discrete, as opposed to continuous.

This repo is just an example of what using Flashpipe might look like.

## Workflow

- Work on SAP/CPI in the browser until happy
- `./auto/sync-down` to pull in the changes on your integration package
- Potentially edit files in your artifact
- git push

## Automation

On every push, the pipeline will

- Run the tests for each integration flow
- Update the integration flow (artifact) on the SAP tenant
- if there are configuration overwrites, they will be applied
- Deploy the artifact

## Remaining questions

- What is the better way to pull in changes?
  - sync the package?
  - snapshot?
- Draft handling?
  - should we pull in drafts or not?
  - should we push drafts of not?
    - this might not be relevant if we use `update artifact`.
