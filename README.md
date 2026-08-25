# Omatools

Reusable building blocks for polished, secure Omarchy plugins.

Omatools packages come from problems solved while building real plugins. They
are small enough to review, independently versioned, and copied into your
project with [qmlpack](https://github.com/silouanwright/qmlpack). There is no
runtime package manager and no hidden installation step.

## Packages

### [oma-ui-kit](packages/oma-ui-kit)

Keyboard-first QML controls that compose Omarchy's native theme and UI system.
Includes settings rows, tabs, key hints, icon controls, and action buttons.

```bash
qmlpack add oma-ui-kit github:silouanwright/omatools/packages/oma-ui-kit@0.1.1
```

### [bounded-read](packages/bounded-read)

Safely reads replaceable local files before their contents enter the
long-running Omarchy Shell process. It applies a byte ceiling and validates the
opened descriptor without following symlinks or blocking on special files.

```bash
qmlpack add bounded-read github:silouanwright/omatools/packages/bounded-read@0.2.0
```

### [oma-command-layer](packages/oma-command-layer)

Adds configurable, window-scoped commands and positioned key hints to QML
panels. It handles shortcut normalization, duplicate recovery, input
suspension, and focus-safe behavior when another Omarchy panel opens.

```bash
qmlpack add oma-command-layer github:silouanwright/omatools/packages/oma-command-layer@0.2.1
```

### [oma-showcase](packages/oma-showcase)

Renders Retina-ready QML previews across installed Omarchy themes without
changing your live desktop. It handles isolated theme loading, wallpapers,
offscreen Quickshell capture, and image grids.

```bash
qmlpack add oma-showcase github:silouanwright/omatools/packages/oma-showcase@0.1.0
```

## Using a package

`qmlpack add` prepares a reviewable candidate without changing your project.
Inspect the source and summary, then apply it explicitly:

```bash
qmlpack apply
qmlpack verify
```

The package source and lockfile are committed with your plugin, so builds do
not depend on Omatools or GitHub remaining available.

## Why this exists

Omarchy plugins currently share code by copying files. Omatools keeps that
simple deployment model while adding names, versions, immutable source
references, integrity checks, and a repeatable update workflow.

These packages are not certified safe. qmlpack verifies provenance and
integrity, not intent. Review every addition and update before applying it.

## Releasing

Each directory under `packages/` is an independent package with its own
`qmlpack.json`, npm metadata, and release tag:

```text
packages/<name>/v<version>
```

Package-specific usage and dependencies live in each package's README.

## License

Each package carries its own license and third-party notices where needed.
