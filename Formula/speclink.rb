# 由 scripts/release/homebrew-formula.mjs 產生，請勿手改；改版時重新產生。
class Speclink < Formula
  desc "Spec-Driven Development engine and toolkit"
  homepage "https://github.com/MomoChenisMe/speclink"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@speclink/cli-darwin-arm64/-/cli-darwin-arm64-0.7.0.tgz"
      sha256 "b8d3a4e3cf28048acbdcac9e519a479d8e7ae98b9a4a4857ef60ddf0b3251164"
    else
      url "https://registry.npmjs.org/@speclink/cli-darwin-x64/-/cli-darwin-x64-0.7.0.tgz"
      sha256 "fb0241897870fa77ff0cfe8ad2f9ba9d6570103560b430cd49ac399cab57531b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@speclink/cli-linux-arm64/-/cli-linux-arm64-0.7.0.tgz"
      sha256 "a7dfdf7c910cae519bebac9b5874cf903e88897cd4d8ba165620b53f7559fa64"
    else
      url "https://registry.npmjs.org/@speclink/cli-linux-x64/-/cli-linux-x64-0.7.0.tgz"
      sha256 "0b2b7f705c982f6088903b3a0a46dec3d02560eca5ee0bb2459ee96063bd1451"
    end
  end

  def install
    bin.install "speclink"
  end

  test do
    assert_match "0.7.0", shell_output("#{bin}/speclink --version")
  end
end
