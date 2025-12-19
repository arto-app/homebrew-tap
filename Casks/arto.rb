cask "arto" do
  version "0.4.1"
  sha256 "271b5699b7e76356b18556e177bf40bc9b8772a80ced331c2723e913dc3d2242"

  url "https://github.com/lambdalisue/rs-arto/releases/download/v#{version}/Arto_#{version}_aarch64.dmg"
  name "Arto"
  desc "The Art of Reading Markdown."
  homepage "https://github.com/lambdalisue/rs-arto"

  depends_on arch: :arm64

  app "Arto.app"

  caveats <<~EOS
    Upstream binaries are not signed or notarized with an Apple Developer ID, so Gatekeeper will block launches.
    If you trust the publisher, install with `brew install --cask --no-quarantine #{token}` or remove the quarantine
    attribute after installation with `xattr -dr com.apple.quarantine /Applications/Arto.app`.
  EOS
end
