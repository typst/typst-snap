# Typst Snap for Linux
This repository serves as the uploader for the Typst Snap.

Currently, this is experimental. Releases are triggered by pushes on this
repository. If we decide to offer this Snap permanently, they will be triggered
by a Repository Dispatch from
[Typst's main repository](https://github.com/typst/typst) instead.

## Technical Notes

The snap is configured to use the real user home directory paths (via `SNAP_REAL_HOME`) for packages and fonts, rather than the sandboxed snap home directory. This allows Typst to access `~/.local/share/typst/packages` and `~/.cache/typst/packages` directly without requiring manual connection of the `personal-files` interfaces (`typst:dot-cache-typst` and `typst:dot-local-share-typst`).

This means the snap works out-of-the-box with no additional configuration needed.

## Contributing
Let us know if you are or would be interested in using Typst as a Snap.

## License
This repository is licensed as Apache 2.0.
