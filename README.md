# meridian-sys-memory-vault

`meridian-sys-memory-vault` explores systems programming with a small R codebase and local fixtures. The technical goal is to build an R toolkit that studies memory behavior through windowed input fixtures, with late-data behavior checks and single-node deterministic mode.

## Why It Exists

I want this repository to be useful as a quick reading exercise: fixtures first, implementation second, verifier last.

## Meridian Sys Memory Vault Review Notes

`edge` and `stale` are the cases worth reading first. They show the optimistic and cautious ends of the fixture.

## Features

- `fixtures/domain_review.csv` adds cases for allocation pressure and dirty state.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/meridian-sys-memory-walkthrough.md` walks through the case spread.
- The R code includes a review path for `guard slack` and `allocation pressure`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Architecture Notes

The repository has two validation layers: the original compact policy fixture and the domain review fixture. They are separate so one can change without hiding failures in the other.

The R addition stays small enough to inspect in one sitting.

## Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Tests

That command is also the regression path. It verifies the domain cases and catches mismatches between the CSV, metadata, and code.

## Limitations And Roadmap

No external service is required. A deeper version would add more negative cases and a clearer boundary around invalid input.
