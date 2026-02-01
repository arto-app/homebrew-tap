cask "arto" do
  version "0.15.1"
  sha256 "915c5b1ebd711b6513347b03359868992dcf16c0d964fa222e6a48a44afd7c9f"

  url "https://github.com/arto-app/Arto/releases/download/v#{version}/Arto_#{version}_aarch64.dmg"
  name "Arto"
  desc "The Art of Reading Markdown."
  homepage "https://github.com/arto-app/Arto"

  depends_on arch: :arm64

  app "Arto.app"
  binary "#{appdir}/Arto.app/Contents/MacOS/arto"

  caveats <<~EOS
    ╔═══════════════════════════════════════════════════════════════════════╗
    ║                                                                       ║
    ║  ⚠️  REQUIRED STEP - Run this command before launching Arto:          ║
    ║                                                                       ║
    ║      xattr -dr com.apple.quarantine /Applications/Arto.app            ║
    ║                                                                       ║
    ║  This removes macOS Gatekeeper restrictions for unsigned apps.        ║
    ║  Only do this if you trust: https://github.com/arto-app/Arto          ║
    ║                                                                       ║
    ╚═══════════════════════════════════════════════════════════════════════╝
  EOS
end
