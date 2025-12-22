cask "arto" do
  version "0.6.1"
  sha256 "9e5a10d445458ca51dbd72b3790c277eeaf5ca76e0cee3e8e5035748ad6bb90b"

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
