# 由 scripts/release/homebrew-formula.mjs 產生，請勿手改；改版時重新產生。
class Speclink < Formula
  desc "Spec-Driven Development engine and toolkit"
  homepage "https://github.com/MomoChenisMe/speclink"
  version "0.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@speclink/cli-darwin-arm64/-/cli-darwin-arm64-0.10.0.tgz"
      sha256 "c43a3de6018fe7c52dc2d8ad1b7049c35dbe44abf05131d7462ea063c49e5b97"
    else
      url "https://registry.npmjs.org/@speclink/cli-darwin-x64/-/cli-darwin-x64-0.10.0.tgz"
      sha256 "a0ee70d51e1de029e24029555be9f3049ce11ac915bd9a6e04e46e97108c1e1c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@speclink/cli-linux-arm64/-/cli-linux-arm64-0.10.0.tgz"
      sha256 "a6aad22e7e81700418ac8b985d9c7990774e502c9c5ce063ee42a87fcfdc2aa6"
    else
      url "https://registry.npmjs.org/@speclink/cli-linux-x64/-/cli-linux-x64-0.10.0.tgz"
      sha256 "e72cb6ebf0714aafcd08cf38d71d0d0af827a0ae8426b727104c990c6fe48485"
    end
  end

  def install
    bin.install "speclink"
  end

  test do
    assert_match "0.10.0", shell_output("#{bin}/speclink --version")
  end
end
