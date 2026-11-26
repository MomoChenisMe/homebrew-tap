# 由 scripts/release/homebrew-formula.mjs 產生，請勿手改；改版時重新產生。
class Speclink < Formula
  desc "Spec-Driven Development engine and toolkit"
  homepage "https://github.com/MomoChenisMe/speclink"
  version "0.20.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@speclink/cli-darwin-arm64/-/cli-darwin-arm64-0.20.0.tgz"
      sha256 "e8bc8a269dd54df09f8094a48fd673d2918e05e765ad66759987881a0a6b4e9d"
    else
      url "https://registry.npmjs.org/@speclink/cli-darwin-x64/-/cli-darwin-x64-0.20.0.tgz"
      sha256 "0c0c0e7e7196023a0c7f8e984728d7490fbbe58c9d94b51a4c94924b6ab693a0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@speclink/cli-linux-arm64/-/cli-linux-arm64-0.20.0.tgz"
      sha256 "fb48f0608730cb55425eea4389523a95e504eee1e9a93ff818e74d3a5a54ed1f"
    else
      url "https://registry.npmjs.org/@speclink/cli-linux-x64/-/cli-linux-x64-0.20.0.tgz"
      sha256 "209b394de80c619c14907ca77657a2c1712a2bd61673138bf1d6e1089a50b1e3"
    end
  end

  def install
    bin.install "speclink"
  end

  test do
    assert_match "0.20.0", shell_output("#{bin}/speclink --version")
  end
end
