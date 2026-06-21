# Evidence Review Guide

Use this guide to review the public proof kit without private engine access.

## Review Order

1. Read [README.md](../README.md).
2. Read [PROOF_SCOPE.md](../PROOF_SCOPE.md).
3. Review [interface screenshots](interface-screenshots.md).
4. Review the release evidence summary under `proofs/`.
5. Use [ACCESS_REQUEST.md](../ACCESS_REQUEST.md) if private review is needed.

## What To Look For

- Does the product flow make sense?
- Is the private/public boundary clear?
- Does the Evidence Path explain the workflow without exposing internals?
- Are the validation claims bounded to the private-alpha checkpoint?
- Is a private review or pilot needed before making a commercial decision?

## What Not To Infer

This public proof kit does not let a reviewer infer or reproduce the private implementation. It is a public-safe evidence wrapper, not the engine.
