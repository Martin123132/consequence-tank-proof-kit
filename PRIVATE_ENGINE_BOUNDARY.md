# Private Engine Boundary

Consequence Tank uses a private-core/public-proof model.

## Public Proof Kit

The public proof kit may include:

- product overview
- bounded proof claims
- validation summaries
- screenshots
- evidence cards
- access-request workflow
- commercial-use boundary
- public-materials licence

## Private Engine

The private engine remains closed and may include:

- source code
- simulation internals
- analytics implementation
- evidence-export implementation
- report-pack and decision-package internals
- governance ledger internals
- verifier internals
- private release artifacts
- generated local evidence
- benchmark configuration
- unpublished roadmap

## Access Boundary

Private access requires written permission and may require an NDA.

Private access does not automatically grant:

- commercial use
- production use
- sublicensing
- redistribution
- hosted-service rights
- model-training rights
- patent rights
- trademark rights
- rights to publish private files or implementation details

## Public Wording Rule

Public wording should describe the product shape and proof story. It should not describe implementation internals step-by-step.

Good public wording:

```text
The private engine verifies decision packages and governance bundles before audit use.
```

Avoid public wording:

```text
The engine implements verifier logic by doing [private internal sequence].
```

## Access Review Rule

Before granting private access, record:

- requester identity
- organisation
- GitHub username
- intended use
- access scope
- NDA status
- commercial/noncommercial status
- whether any AI platform, hosted service, model provider, search company, logistics product, or commercial product will see or use the work
