cask "arto" do
  version "0.41.0"
  sha256 "b810a4bc881e9dca314c588c9feae693eabea03384d4ffa49d6676dc920a7659"

  url "https://github.com/arto-app/Arto/releases/download/v#{version}/Arto_#{version}_aarch64.dmg"
  name "Arto"
  desc "The Art of Reading Markdown."
  homepage "https://github.com/arto-app/Arto"

  depends_on arch: :arm64

  app "Arto.app"
  binary "#{appdir}/Arto.app/Contents/MacOS/arto"

  # Arto is ad-hoc signed, not signed with an Apple Developer ID nor
  # notarized, so Gatekeeper refuses the quarantined bundle ("damaged") and
  # Homebrew no longer offers --no-quarantine. Recursive, because the Quick
  # Look extension inside the bundle is quarantined too.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Arto.app"]
  end
end
