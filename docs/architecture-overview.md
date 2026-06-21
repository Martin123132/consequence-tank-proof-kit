# Public Architecture Overview

Consequence Tank uses a private-core/public-proof split.

```text
Public proof kit
  README
  proof scope
  screenshots
  evidence cards
  access request path
  commercial boundary

Private engine
  simulation runtime
  analytics dashboard
  experiment history
  evidence export
  report-pack decisions
  decision packages
  governance ledger
  audit bundle verifier
```

## Public Flow

```text
Simulation -> Analytics -> Evidence -> Audit
```

## Guided Evidence Path

The private app surfaces four guided phases:

- Run: Scenario Lab and Experiment History.
- Compare: History Review and A/B evidence export.
- Decide: Report Library, decision notes, and handoff.
- Audit: Evidence Chain, Package Verifier, Governance Ledger, and Bundle Verifier.

## Private Boundary

The proof kit shows the existence and review shape of the workflow. It does not publish code, algorithms, engine internals, benchmark internals, or private release artifacts.
