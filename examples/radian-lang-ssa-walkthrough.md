# Radian Lang Ssa Grid Walkthrough

The fixture is intentionally compact, so the review starts with the cases that pull farthest apart.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | IR pressure | 196 | ship |
| stress | lowering drift | 212 | ship |
| edge | stack depth | 206 | ship |
| recovery | diagnostic reach | 211 | ship |
| stale | IR pressure | 162 | ship |

Start with `stress` and `stale`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

The useful comparison is `lowering drift` against `IR pressure`, not the raw score alone.
