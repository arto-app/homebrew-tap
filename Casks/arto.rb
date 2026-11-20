cask "arto" do
  version "0.46.1"
  sha256 "2c3b0b80249afbb14e53f834937280656419324db2c89cbb6e65e7a2ba485d3c"

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
