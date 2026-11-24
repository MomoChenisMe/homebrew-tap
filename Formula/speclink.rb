# 由 scripts/release/homebrew-formula.mjs 產生，請勿手改；改版時重新產生。
class Speclink < Formula
  desc "Spec-Driven Development engine and toolkit"
  homepage "https://github.com/MomoChenisMe/speclink"
  version "0.19.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@speclink/cli-darwin-arm64/-/cli-darwin-arm64-0.19.0.tgz"
      sha256 "f7e66913ba0c416342fd650a7e318896a52595095bc83467dbb16c341a8e6133"
    else
      url "https://registry.npmjs.org/@speclink/cli-darwin-x64/-/cli-darwin-x64-0.19.0.tgz"
      sha256 "36224be1b5634f98bb0beae00d8dc3a6232fa88451acb3d32d2d308b4bace471"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@speclink/cli-linux-arm64/-/cli-linux-arm64-0.19.0.tgz"
      sha256 "7f727be58a1c14296b1a05cee1b4413cb254ba723c34487ab8470e83aa4805d4"
    else
      url "https://registry.npmjs.org/@speclink/cli-linux-x64/-/cli-linux-x64-0.19.0.tgz"
      sha256 "25dedf7794f2a9f085054f42af7b4bbcbe33aea35776a31de30248055ddc045e"
    end
  end

  def install
    bin.install "speclink"
  end

  test do
    assert_match "0.19.0", shell_output("#{bin}/speclink --version")
  end
end
