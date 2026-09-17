# 由 scripts/release/homebrew-formula.mjs 產生，請勿手改；改版時重新產生。
class Speclink < Formula
  desc "Spec-Driven Development engine and toolkit"
  homepage "https://github.com/MomoChenisMe/speclink"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@speclink/cli-darwin-arm64/-/cli-darwin-arm64-0.6.0.tgz"
      sha256 "5f3e1d6b8223bf5db7321d49c10a2c218a823d5e427cfff57bf9255d972a6c77"
    else
      url "https://registry.npmjs.org/@speclink/cli-darwin-x64/-/cli-darwin-x64-0.6.0.tgz"
      sha256 "9c2a5cd8689c8904c158a74359b8f108ce3c5cab1b32f3703b4566614e380495"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@speclink/cli-linux-arm64/-/cli-linux-arm64-0.6.0.tgz"
      sha256 "c7eefb36b21d014210312f7aa4596c5e079d789cfac89e28bd6f18e1af609c83"
    else
      url "https://registry.npmjs.org/@speclink/cli-linux-x64/-/cli-linux-x64-0.6.0.tgz"
      sha256 "b766afed29c47d61ad8c9272758fdddcc8c76cd46f344077b87a68dd48bb4b71"
    end
  end

  def install
    bin.install "speclink"
  end

  test do
    assert_match "0.6.0", shell_output("#{bin}/speclink --version")
  end
end
