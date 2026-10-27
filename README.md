# Homebrew tap

Homebrew packages maintained by [ungaaaabungaaa](https://github.com/ungaaaabungaaa).

## Install Qeth

```sh
brew install ungaaaabungaaa/tap/qeth
qeth --version
qeth --help
```

If Homebrew asks you to trust the formula, review [Formula/qeth.rb](Formula/qeth.rb), then run `brew trust --formula ungaaaabungaaa/tap/qeth` and repeat the install. This trusts Qeth only.

The formula installs the published [@ungaaaabungaaa/qeth](https://www.npmjs.com/package/@ungaaaabungaaa/qeth) release and the Homebrew Node.js runtime. Its source archive is pinned by SHA-256. Package lifecycle scripts are disabled during installation.

Qeth provides local RAG-data checks, agent-trace reports, bounded same-origin crawling, and offline survey-route planning. This is software tooling; it does not establish a physical flight or hardware result.

## Update

```sh
brew update
brew upgrade ungaaaabungaaa/tap/qeth
```

## Maintainer checks

```sh
brew style ungaaaabungaaa/tap/qeth
brew audit --strict ungaaaabungaaa/tap/qeth
brew install ungaaaabungaaa/tap/qeth
brew test ungaaaabungaaa/tap/qeth
```

CI runs these checks on macOS and Linux, one platform at a time. The formula test exercises version/help and RAG, trace, and mission commands against the installed example data. The Qeth repository holds the full behavior and crawler fixture tests. A public tap is separate from inclusion in Homebrew/core.

The formula and documentation were prepared with Codex assistance. Qeth and its dependencies retain their respective licenses. This tap uses the MIT license.
