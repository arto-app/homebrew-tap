cask "arto" do
  version "0.44.0"
  sha256 "d60457fc98aab28caff91a63265b693e127256318591bea1b48446a4dd1c804f"

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
