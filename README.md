# Homebrew Tap for Phantom Secrets

## Install

```bash
brew tap ashlrai/phantom
```

Homebrew 6.0 and later require third-party formulae to be trusted explicitly.
On those versions, trust Phantom's specific formula:

```bash
brew trust --formula ashlrai/phantom/phantom
```

Then install the fully qualified formula:

```bash
brew install ashlrai/phantom/phantom
```

This tap installs Phantom Secrets `v0.7.5` from the verified prebuilt release
assets published by [`ashlrai/phantom-secrets`](https://github.com/ashlrai/phantom-secrets/releases/tag/v0.7.5).

## Platform verification

The tap's pull-request checks install and test the formula on native GitHub-hosted
runners for macOS and Linux, on both arm64 and x86_64. These checks verify archive
selection and execution on those runner images; they do not claim compatibility
with every operating-system version, Linux distribution, or older system library.

## About

[Phantom Secrets](https://github.com/ashlrai/phantom-secrets) prevents AI coding agents from leaking your API keys.
