# 由 scripts/release/homebrew-formula.mjs 產生，請勿手改；改版時重新產生。
class Speclink < Formula
  desc "Spec-Driven Development engine and toolkit"
  homepage "https://github.com/MomoChenisMe/speclink"
  version "0.11.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@speclink/cli-darwin-arm64/-/cli-darwin-arm64-0.11.0.tgz"
      sha256 "6da34b65227ea8068a1f96566064f4096dfca90299fe1e445eec1ca097928cdb"
    else
      url "https://registry.npmjs.org/@speclink/cli-darwin-x64/-/cli-darwin-x64-0.11.0.tgz"
      sha256 "192cbddebcce24c78d82e7194ce0b9046afb184e3f23a3d01d8622b9abe767bd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@speclink/cli-linux-arm64/-/cli-linux-arm64-0.11.0.tgz"
      sha256 "37bab37ddfbf081d3d54f4658c4bcd099dfcb522fc11b39cb7ded2258207bb6a"
    else
      url "https://registry.npmjs.org/@speclink/cli-linux-x64/-/cli-linux-x64-0.11.0.tgz"
      sha256 "60b223adc14a06b4e5df84402a1f63bd426a19997724b84ab1e528e226e72cae"
    end
  end

  def install
    bin.install "speclink"
  end

  test do
    assert_match "0.11.0", shell_output("#{bin}/speclink --version")
  end
end
