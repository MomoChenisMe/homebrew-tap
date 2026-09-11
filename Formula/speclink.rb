# 由 scripts/release/homebrew-formula.mjs 產生，請勿手改；改版時重新產生。
class Speclink < Formula
  desc "Spec-Driven Development engine and toolkit"
  homepage "https://github.com/MomoChenisMe/speclink"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MomoChenisMe/speclink/releases/download/v0.3.0/speclink-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "58f50b9b6abb046f092eadfbd56bef023025084988f139bf41086535d7053b1b"
    else
      url "https://github.com/MomoChenisMe/speclink/releases/download/v0.3.0/speclink-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "b90059a95e212698146b854b506c8421f0eb6b84991538d5ea961ce3620b550c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/MomoChenisMe/speclink/releases/download/v0.3.0/speclink-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bae809726755aac1f0938f96cac4e0ae08513eae0e9aa9cf447986b2e8f74082"
    else
      url "https://github.com/MomoChenisMe/speclink/releases/download/v0.3.0/speclink-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "64530ea067b3386a9a62edf11c11e9690b460befba8b07e51d87e36496553706"
    end
  end

  def install
    bin.install "speclink"
  end

  test do
    assert_match "0.3.0", shell_output("#{bin}/speclink --version")
  end
end
