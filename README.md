# Typst Snap for Linux
This repository serves as the uploader for the Typst Snap.

Currently, this is experimental. Releases are triggered by pushes on this
repository. If we decide to offer this Snap permanently, they will be triggered
by a Repository Dispatch from
[Typst's main repository](https://github.com/typst/typst) instead.

## Limitations
Since this is an experimental release, there are some limitations:

- Only `amd64` is supported
- Neither the `home` nor the `removable-media` interface autoconnect

## Contributing
Contributions are welcome, especially for adding more architectures and
documentation. We expect `arm64` to be the most sought after `amd64`. Also let
us know if you are or would be interested in using Typst as a Snap.

## License
This repository is licensed as Apache 2.0.