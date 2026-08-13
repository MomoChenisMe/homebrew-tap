# 由 scripts/homebrew-formula.mjs 產生，請勿手改；改版時重新產生。
class Speclink < Formula
  desc "Spec-Driven Development engine and toolkit"
  homepage "https://github.com/MomoChenisMe/speclink"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MomoChenisMe/speclink/releases/download/v0.1.1/speclink-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "c12c64b85d411b742b42876accb0cc433caf7dc199f73a417994d508f8923f0d"
    else
      url "https://github.com/MomoChenisMe/speclink/releases/download/v0.1.1/speclink-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "05f9bfd47394894632816d4b2ed7c749f1726cd6551e4e3ac32be3722d377854"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/MomoChenisMe/speclink/releases/download/v0.1.1/speclink-v0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "df20ca598ddf5efe862c2625f4b00a89f4f48ec43548d31e1305c3d3ed0063f7"
    else
      url "https://github.com/MomoChenisMe/speclink/releases/download/v0.1.1/speclink-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "37e06cb13411f98f08483061f07f7ca21d746758e1cb2365cdd99c730a4c32ad"
    end
  end

  def install
    bin.install "speclink"
  end

  test do
    assert_match "0.1.1", shell_output("#{bin}/speclink --version")
  end
end
