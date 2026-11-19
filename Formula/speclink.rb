# 由 scripts/release/homebrew-formula.mjs 產生，請勿手改；改版時重新產生。
class Speclink < Formula
  desc "Spec-Driven Development engine and toolkit"
  homepage "https://github.com/MomoChenisMe/speclink"
  version "0.13.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@speclink/cli-darwin-arm64/-/cli-darwin-arm64-0.13.0.tgz"
      sha256 "3f2c340cf8b4119175fae27a7d53afbade186eae65ce2cdb4b1bbd12031bd49d"
    else
      url "https://registry.npmjs.org/@speclink/cli-darwin-x64/-/cli-darwin-x64-0.13.0.tgz"
      sha256 "5ef4b0d35a0aee7bd98aaa64792d2cec7f6829860565ae2d5bb5b3cd5d11fabc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@speclink/cli-linux-arm64/-/cli-linux-arm64-0.13.0.tgz"
      sha256 "66c90b3df85839c4456a5a88261f3533b4cd9005dc102c258297eec652c67981"
    else
      url "https://registry.npmjs.org/@speclink/cli-linux-x64/-/cli-linux-x64-0.13.0.tgz"
      sha256 "91b98f8595a2873356bed77084f04ccd44f422ff8c57f3f221b664d6b3f52913"
    end
  end

  def install
    bin.install "speclink"
  end

  test do
    assert_match "0.13.0", shell_output("#{bin}/speclink --version")
  end
end
