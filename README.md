# Homebrew Tap for Arto

This is a [Homebrew](https://brew.sh/) tap for [Arto](https://github.com/lambdalisue/rs-arto), a Markdown reader application for macOS.

## Installation

```bash
brew install --cask lambdalisue/arto/arto
```

### Bypassing Gatekeeper

Since the upstream binaries are not signed or notarized with an Apple Developer ID, macOS Gatekeeper will block the app from launching. You have two options:

**Option 1: Install without quarantine**

```bash
brew install --cask --no-quarantine lambdalisue/arto/arto
```

**Option 2: Remove quarantine after installation**

```bash
xattr -dr com.apple.quarantine /Applications/Arto.app
```

## About Arto

Arto is "The Art of Reading Markdown" - a dedicated Markdown reader for macOS.

- **Homepage**: https://github.com/lambdalisue/rs-arto
- **Platform**: Apple Silicon (ARM64) only
- **License**: See upstream repository

## License

This tap follows the same license as the upstream Arto project.
