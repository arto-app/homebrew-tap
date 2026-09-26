cask "arto" do
  version "0.39.0"
  sha256 "b94999e3eb2f9b0d4bcc1e9835a5eea222f0a9626fc0117a4b9a372115f50283"

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
