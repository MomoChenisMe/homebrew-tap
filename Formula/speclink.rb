# 由 scripts/release/homebrew-formula.mjs 產生，請勿手改；改版時重新產生。
class Speclink < Formula
  desc "Spec-Driven Development engine and toolkit"
  homepage "https://github.com/MomoChenisMe/speclink"
  version "0.16.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@speclink/cli-darwin-arm64/-/cli-darwin-arm64-0.16.0.tgz"
      sha256 "429ee4d7dbc7718cc044ff90a33bff4a548d5693e580ddf20e6603aebd41e897"
    else
      url "https://registry.npmjs.org/@speclink/cli-darwin-x64/-/cli-darwin-x64-0.16.0.tgz"
      sha256 "df39c68ab3f0dc9fcb83c42faa96184e57e7dc05d8e7b4d01f82b6a29da71013"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@speclink/cli-linux-arm64/-/cli-linux-arm64-0.16.0.tgz"
      sha256 "8eadb7a3217134bd868a0eeca48325ae8e5775400c2c8449219aefceb0ddde84"
    else
      url "https://registry.npmjs.org/@speclink/cli-linux-x64/-/cli-linux-x64-0.16.0.tgz"
      sha256 "5f70b841caae5d6e7a493eb5c906e61e5b33bb68b3f3b42812b1ea549246b588"
    end
  end

  def install
    bin.install "speclink"
  end

  test do
    assert_match "0.16.0", shell_output("#{bin}/speclink --version")
  end
end
