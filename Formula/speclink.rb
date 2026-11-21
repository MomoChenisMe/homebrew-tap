# 由 scripts/release/homebrew-formula.mjs 產生，請勿手改；改版時重新產生。
class Speclink < Formula
  desc "Spec-Driven Development engine and toolkit"
  homepage "https://github.com/MomoChenisMe/speclink"
  version "0.15.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@speclink/cli-darwin-arm64/-/cli-darwin-arm64-0.15.0.tgz"
      sha256 "9aa7095150cd75303102080a79750484ad11d8c9dcd8cabaaa62b4f912ade830"
    else
      url "https://registry.npmjs.org/@speclink/cli-darwin-x64/-/cli-darwin-x64-0.15.0.tgz"
      sha256 "be646750e1c3bab89808740f87337eadcace115343dc09bccf4365501a8eb7e4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@speclink/cli-linux-arm64/-/cli-linux-arm64-0.15.0.tgz"
      sha256 "fa418eeef0b6be6d4ea747c73fcb92d25409b26c32d1670a5b942d763d9b352d"
    else
      url "https://registry.npmjs.org/@speclink/cli-linux-x64/-/cli-linux-x64-0.15.0.tgz"
      sha256 "b883af9d58de938534972a02b974f8d6720486b0824caf29403bc0c3498029af"
    end
  end

  def install
    bin.install "speclink"
  end

  test do
    assert_match "0.15.0", shell_output("#{bin}/speclink --version")
  end
end
