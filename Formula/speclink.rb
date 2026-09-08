# 由 scripts/homebrew-formula.mjs 產生，請勿手改；改版時重新產生。
class Speclink < Formula
  desc "Spec-Driven Development engine and toolkit"
  homepage "https://github.com/MomoChenisMe/speclink"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MomoChenisMe/speclink/releases/download/v0.2.0/speclink-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "ff9d87885c18600dfe4e2f613a27fee32e4b855dfcb7655e6df5a69910463821"
    else
      url "https://github.com/MomoChenisMe/speclink/releases/download/v0.2.0/speclink-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "514b52d8319e1c6493540fdb15fb219d3ac78a8acc6a280d69f0e9500cf5e36b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/MomoChenisMe/speclink/releases/download/v0.2.0/speclink-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "18704bcfbe4931fccb6bad2ffd556bc8c524819b280e8f1cce83509d0efe7c14"
    else
      url "https://github.com/MomoChenisMe/speclink/releases/download/v0.2.0/speclink-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "78ae94a24063c591e8d468be7ad834598bbb261071df866565b38da6a896f91c"
    end
  end

  def install
    bin.install "speclink"
  end

  test do
    assert_match "0.2.0", shell_output("#{bin}/speclink --version")
  end
end
