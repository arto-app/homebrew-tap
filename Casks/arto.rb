cask "arto" do
  version "0.11.1"
  sha256 "9c8cf02851e34906ce8e744ae294e003df7d8cdeb69241ec8fcf664590ece276"

  url "https://github.com/arto-app/Arto/releases/download/v#{version}/Arto_#{version}_aarch64.dmg"
  name "Arto"
  desc "The Art of Reading Markdown."
  homepage "https://github.com/arto-app/Arto"

  depends_on arch: :arm64

  app "Arto.app"

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
