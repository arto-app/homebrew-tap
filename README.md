# Homebrew Tap for Arto

This is a [Homebrew](https://brew.sh/) tap for [Arto](https://github.com/arto-app/Arto), a Markdown reader application for macOS.

## Installation

```bash
brew install --cask arto-app/tap/arto
xattr -dr com.apple.quarantine /Applications/Arto.app
```

### Bypassing Gatekeeper

> [!WARNING]
> Homebrew is [deprecating `--no-quarantine`](https://github.com/Homebrew/brew/issues/20755) and will end support for casks that fail Gatekeeper checks on **September 1st, 2026**. This tap will not work after that date unless upstream binaries are signed and notarized with an Apple Developer ID.

Since the upstream binaries are not signed or notarized with an Apple Developer ID, macOS Gatekeeper will block the app from launching. You have two options:

**Option 1: Remove quarantine after installation (Recommended)**

```bash
brew install --cask arto-app/tap/arto
xattr -dr com.apple.quarantine /Applications/Arto.app
```

**Option 2: Install without quarantine (will be deprecated in 2026)**

```bash
brew install --cask --no-quarantine arto-app/tap/arto
```

## About Arto

Arto is "The Art of Reading Markdown" - a dedicated Markdown reader for macOS.

- **Homepage**: [https://github.com/arto-app/Arto](https://github.com/arto-app/Arto)
- **Platform**: Apple Silicon (ARM64) only
- **License**: See upstream repository

## License

This tap follows the same license as the upstream Arto project.
