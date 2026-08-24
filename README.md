# Omatools

Small, reviewable source packages extracted from real Omarchy plugin work.
Packages are independently released and consumed with
[Omapack](https://github.com/silouanwright/omapack).

## Packages

- `oma-ui`: keyboard-first QML compositions built on Omarchy's native UI.
- `bounded-read`: safely emits a bounded, descriptor-validated regular file.

Each package owns its `omapack.json` and release tags. For example:

```text
packages/oma-ui/v0.1.0
packages/bounded-read/v0.1.0
```

Package source is not certified safe merely because Omapack can verify its
origin and digest. Review it before adding or updating it.
