# 由 scripts/release/homebrew-formula.mjs 產生，請勿手改；改版時重新產生。
class Speclink < Formula
  desc "Spec-Driven Development engine and toolkit"
  homepage "https://github.com/MomoChenisMe/speclink"
  version "0.12.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@speclink/cli-darwin-arm64/-/cli-darwin-arm64-0.12.0.tgz"
      sha256 "c5b4d815be049eca7ae0978e0c611e66215d44319590d5073910c10b5b4ff710"
    else
      url "https://registry.npmjs.org/@speclink/cli-darwin-x64/-/cli-darwin-x64-0.12.0.tgz"
      sha256 "9b5591f6870507fb9b13c2da7b208da44c7ca33fe3ad1a1fd1a97c0c32593bb2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@speclink/cli-linux-arm64/-/cli-linux-arm64-0.12.0.tgz"
      sha256 "d4d42115021b4c056318823f592562c623435715711626a8b17a450d8ffe14e1"
    else
      url "https://registry.npmjs.org/@speclink/cli-linux-x64/-/cli-linux-x64-0.12.0.tgz"
      sha256 "1e2ff156698c5cec27b0d542171877bcf55d78e8f7676ab006efd38e5dedc180"
    end
  end

  def install
    bin.install "speclink"
  end

  test do
    assert_match "0.12.0", shell_output("#{bin}/speclink --version")
  end
end
