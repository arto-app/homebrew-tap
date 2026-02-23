cask "arto" do
  version "0.24.1"
  sha256 "37d0d9d622c0b783bbcbce2a3c13b32ba9ef2a7518dad24e8a6e54780e3b4fbd"

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
