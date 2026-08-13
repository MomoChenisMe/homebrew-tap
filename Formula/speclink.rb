# 由 scripts/homebrew-formula.mjs 產生，請勿手改；改版時重新產生。
class Speclink < Formula
  desc "Spec-Driven Development engine and toolkit"
  homepage "https://github.com/MomoChenisMe/speclink"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MomoChenisMe/speclink/releases/download/v0.1.0/speclink-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "38a8beafdb8e94afd4825b257ade167ef761a5051586731ca8a1cbcfddc47b1e"
    else
      url "https://github.com/MomoChenisMe/speclink/releases/download/v0.1.0/speclink-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "e4f4a9117173a510727b6cf9a0c84859a241c8b9e209f27ccee21cc1bc9199ca"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/MomoChenisMe/speclink/releases/download/v0.1.0/speclink-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "add6a8459c4f14b331bf2726deebd28e4fe399903f79866f0da7d87b53290ff8"
    else
      url "https://github.com/MomoChenisMe/speclink/releases/download/v0.1.0/speclink-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c9d6399f1ec4692a23f42de199948c0a567b0af396491cfa312d2aea0ee7d28f"
    end
  end

  def install
    bin.install "speclink"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/speclink --version")
  end
end
