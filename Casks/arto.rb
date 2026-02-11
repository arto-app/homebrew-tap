cask "arto" do
  version "0.19.1"
  sha256 "3a5cef63f404c7f769a49f5e3478fb831ebc9eadc8c22d708f95a78c83453a9d"

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
