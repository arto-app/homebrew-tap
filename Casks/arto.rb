cask "arto" do
  version "0.5.0"
  sha256 "3416cb8236ecb5fba86c3a086b7bd657b08295c21ffd8aa3a91bfe0bb1a8a833"

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
