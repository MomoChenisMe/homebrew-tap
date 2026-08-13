# 由 scripts/homebrew-formula.mjs 產生，請勿手改；改版時重新產生。
class Speclink < Formula
  desc "Spec-Driven Development engine and toolkit"
  homepage "https://github.com/MomoChenisMe/speclink"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MomoChenisMe/speclink/releases/download/v0.1.2/speclink-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "35ca4f1d16f8649672d6f92bfc6fefe79826e4471647d6de880d70ab8f2b10b2"
    else
      url "https://github.com/MomoChenisMe/speclink/releases/download/v0.1.2/speclink-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "094520b3a79ba6f8bdb93bee9fb7bbe7d4658aeb7ed818266d0fa0cc6f1b126d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/MomoChenisMe/speclink/releases/download/v0.1.2/speclink-v0.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ff176c9ff89e85414ce16394153d70dd24b22007b0dac463bf07eeb60f52469a"
    else
      url "https://github.com/MomoChenisMe/speclink/releases/download/v0.1.2/speclink-v0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "934d5419fad529d4633427adb0076f8c2f700cd013f06bdf456bc14c12181dc1"
    end
  end

  def install
    bin.install "speclink"
  end

  test do
    assert_match "0.1.2", shell_output("#{bin}/speclink --version")
  end
end
