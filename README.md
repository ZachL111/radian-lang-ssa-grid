# radian-lang-ssa-grid

`radian-lang-ssa-grid` keeps a focused Julia implementation around compilers. The project goal is to create a Julia reference implementation for ssa workflows, centered on protocol validation, framed sample traffic, and bounds and ordering tests.

## Why It Exists

The point is to make a small domain rule concrete enough that a reader can change it and immediately see what broke.

## Radian Lang Ssa Grid Review Notes

Start with `lowering drift` and `IR pressure`. Those cases create the widest score spread in this repo, so they are the best quick check when the model changes.

## Features

- `fixtures/domain_review.csv` adds cases for IR pressure and lowering drift.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/radian-lang-ssa-walkthrough.md` walks through the case spread.
- The Julia code includes a review path for `lowering drift` and `IR pressure`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Architecture Notes

The fixture data drives the tests. The code stays thin, while `metadata/domain-review.json` and `config/review-profile.json` explain what each case is meant to protect.

The Julia code keeps the review rule close to the tests.

## Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Tests

The verifier is intentionally local. It should fail if the fixture score math, lane assignment, or language-specific test drifts.

## Limitations And Roadmap

The fixture set is small enough to audit by hand. The next useful expansion is malformed input coverage, not extra surface area.
