# 由 scripts/release/homebrew-formula.mjs 產生，請勿手改；改版時重新產生。
class Speclink < Formula
  desc "Spec-Driven Development engine and toolkit"
  homepage "https://github.com/MomoChenisMe/speclink"
  version "0.14.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@speclink/cli-darwin-arm64/-/cli-darwin-arm64-0.14.0.tgz"
      sha256 "da2a7ff906f2f422b3cabee7cca41bde95f05f3a407018d384efc66d0476264b"
    else
      url "https://registry.npmjs.org/@speclink/cli-darwin-x64/-/cli-darwin-x64-0.14.0.tgz"
      sha256 "fa579c66c94b1d82f9d851b5e655c6151458aabe582d69e03a2c0934dc5f0d2c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@speclink/cli-linux-arm64/-/cli-linux-arm64-0.14.0.tgz"
      sha256 "226ad7a6ae639bcae7c72de67e6128dc83cb906b20a278795fd19b2099391ca1"
    else
      url "https://registry.npmjs.org/@speclink/cli-linux-x64/-/cli-linux-x64-0.14.0.tgz"
      sha256 "b3467c2eb511bd9523a8cfe696e0b69707bbdd5f4fb73a70942201d1bea8d7f1"
    end
  end

  def install
    bin.install "speclink"
  end

  test do
    assert_match "0.14.0", shell_output("#{bin}/speclink --version")
  end
end
