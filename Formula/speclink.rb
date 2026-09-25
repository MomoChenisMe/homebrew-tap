# 由 scripts/release/homebrew-formula.mjs 產生，請勿手改；改版時重新產生。
class Speclink < Formula
  desc "Spec-Driven Development engine and toolkit"
  homepage "https://github.com/MomoChenisMe/speclink"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@speclink/cli-darwin-arm64/-/cli-darwin-arm64-0.8.0.tgz"
      sha256 "26d7f79cedc9a22f71adaca9739e0793b69c436d40c8190a1b6ba758d26c89c0"
    else
      url "https://registry.npmjs.org/@speclink/cli-darwin-x64/-/cli-darwin-x64-0.8.0.tgz"
      sha256 "b01918eb0db809e942d5ac23d1b816d99bda866537ee088bc8661f556d382dc5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@speclink/cli-linux-arm64/-/cli-linux-arm64-0.8.0.tgz"
      sha256 "305899d9bd73fcfc0a89f2a7ad59a4d56080453cc1bc57eb48206949406b87ef"
    else
      url "https://registry.npmjs.org/@speclink/cli-linux-x64/-/cli-linux-x64-0.8.0.tgz"
      sha256 "edd4b25681dceaf7cd611b13dbc52d78ca66f37658437212e5a0487bdc97ccac"
    end
  end

  def install
    bin.install "speclink"
  end

  test do
    assert_match "0.8.0", shell_output("#{bin}/speclink --version")
  end
end
