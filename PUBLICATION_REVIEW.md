# Publication Review

Publication status: published.

Remote:

`https://github.com/Martin123132/consequence-tank-proof-kit`

Current publication branch:

`main`

## Required Review Before Future Publishing

- Confirm this repository contains no private engine source.
- Confirm this repository contains no private release artifacts.
- Confirm this repository contains no private benchmark internals.
- Confirm this repository contains no generated local evidence folders.
- Confirm screenshots are public-safe.
- Confirm access-request wording requires written permission before private access.
- Confirm commercial-use wording grants no commercial rights.
- Confirm licence wording grants public review only.
- Confirm no private repo URL is present.
- Confirm no local machine absolute path is present.
- Confirm no token, key, password, secret, or credential-like string is present.

## Publication Safety Command

Run:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/check_publication_safety.ps1
```

Expected result:

```text
Publication safety check passed.
```

## Manual Review Notes

The automated check is a guardrail, not a legal or security guarantee. Public release still needs a human read-through.

Pay special attention to:

- screenshots
- proof result wording
- architecture wording
- access-request wording
- claims that might sound broader than the private evidence supports

## Do Not Publish If

- any private source file is present
- any private generated evidence folder is present
- any local absolute path is present
- any private repository URL is present
- any commercial licence is accidentally granted
- any implementation details are detailed enough to recreate the private engine

## Current Published Baseline

- Initial scaffold commit: `2148cfe`
- Publication-control commit: `1d4cb7c`
- Safety check status at publication: passed
- GitHub Actions: none configured

Future proof-kit changes should be reviewed locally first, then published only after explicit approval.
