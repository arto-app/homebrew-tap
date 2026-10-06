# Homebrew Tap for Arto

This is a [Homebrew](https://brew.sh/) tap for [Arto](https://github.com/arto-app/Arto), a Markdown reader application for macOS.

## Installation

```bash
brew install --cask arto-app/tap/arto
```

This taps the repository and installs Arto in one step. To tap it explicitly
first:

```bash
brew tap arto-app/tap
brew install --cask arto
```

> [!TIP]
> **Quick Look preview not showing?** macOS normally registers the Quick Look
> extension the first time you launch Arto. If pressing Space on a Markdown file
> still shows no preview — or a stale one right after an upgrade — register the
> extension manually and refresh the cache:
>
> ```sh
> pluginkit -a /Applications/Arto.app/Contents/PlugIns/ArtoQuickLook.appex
> qlmanage -r && qlmanage -r cache
> ```

### Gatekeeper and the quarantine attribute

Arto is not signed or notarized with an Apple Developer ID, so macOS Gatekeeper
refuses to launch a downloaded copy that carries the `com.apple.quarantine`
attribute — it reports the app as damaged. Homebrew has
[removed `--no-quarantine`](https://github.com/Homebrew/brew/issues/20755), so
the cask removes the attribute itself after installing, equivalent to:

```bash
xattr -dr com.apple.quarantine /Applications/Arto.app
```

The official `homebrew/cask` repository does not accept casks that do this,
which is why Arto is distributed from this tap. Install it only if you trust
[the upstream project](https://github.com/arto-app/Arto).

## About Arto

Arto is "The Art of Reading Markdown" - a dedicated Markdown reader for macOS.

- **Homepage**: [https://github.com/arto-app/Arto](https://github.com/arto-app/Arto)
- **Platform**: Apple Silicon (ARM64) only
- **License**: See upstream repository

## License

This tap follows the same license as the upstream Arto project.
