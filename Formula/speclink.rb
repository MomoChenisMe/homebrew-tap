# 由 scripts/release/homebrew-formula.mjs 產生，請勿手改；改版時重新產生。
class Speclink < Formula
  desc "Spec-Driven Development engine and toolkit"
  homepage "https://github.com/MomoChenisMe/speclink"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@speclink/cli-darwin-arm64/-/cli-darwin-arm64-0.5.0.tgz"
      sha256 "6a9b8da17d72c7446a663b5e7bf5a24401789e6ccb38722995bbd7a87dff2036"
    else
      url "https://registry.npmjs.org/@speclink/cli-darwin-x64/-/cli-darwin-x64-0.5.0.tgz"
      sha256 "a8acb2cb9ae87874ad058ac2ef4c45f95b22f0308d3d0ad3a09e9d18ec84f264"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@speclink/cli-linux-arm64/-/cli-linux-arm64-0.5.0.tgz"
      sha256 "37db2eaad2a5e339853a0adb7cb948d06da1f9a94888c57fb9f68b6d9438f495"
    else
      url "https://registry.npmjs.org/@speclink/cli-linux-x64/-/cli-linux-x64-0.5.0.tgz"
      sha256 "249359bbd9c7f7bd05e82274bf69c5b6cfc68b5eec93b4a5988c6b370df29835"
    end
  end

  def install
    bin.install "speclink"
  end

  test do
    assert_match "0.5.0", shell_output("#{bin}/speclink --version")
  end
end
