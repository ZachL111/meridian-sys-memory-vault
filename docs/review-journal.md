# Review Journal

The cases below are the review handles I would use before changing the implementation.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its systems programming focus without claiming live deployment or external usage.

## Cases

- `baseline`: `allocation pressure`, score 192, lane `ship`
- `stress`: `dirty state`, score 189, lane `ship`
- `edge`: `guard slack`, score 232, lane `ship`
- `recovery`: `layout drift`, score 198, lane `ship`
- `stale`: `allocation pressure`, score 144, lane `ship`

## Note

The useful failure mode here is a wrong decision on a named case, not a vague style disagreement.
