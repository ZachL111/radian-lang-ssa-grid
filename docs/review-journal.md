# Review Journal

The review surface for `radian-lang-ssa-grid` is deliberately narrow: one fixture, one scoring rule, and one local check.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its compilers focus without claiming live deployment or external usage.

## Cases

- `baseline`: `IR pressure`, score 196, lane `ship`
- `stress`: `lowering drift`, score 212, lane `ship`
- `edge`: `stack depth`, score 206, lane `ship`
- `recovery`: `diagnostic reach`, score 211, lane `ship`
- `stale`: `IR pressure`, score 162, lane `ship`

## Note

A future change should add new cases before it changes the scoring rule.
