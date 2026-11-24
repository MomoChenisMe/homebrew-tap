# 由 scripts/release/homebrew-formula.mjs 產生，請勿手改；改版時重新產生。
class Speclink < Formula
  desc "Spec-Driven Development engine and toolkit"
  homepage "https://github.com/MomoChenisMe/speclink"
  version "0.18.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@speclink/cli-darwin-arm64/-/cli-darwin-arm64-0.18.0.tgz"
      sha256 "8f052db42019855aca71dcf27b10eac1dcde4d3941ce5f9106fb033cad157ca1"
    else
      url "https://registry.npmjs.org/@speclink/cli-darwin-x64/-/cli-darwin-x64-0.18.0.tgz"
      sha256 "12fe6c73a6b4d7d0007454e996631d76b6226f152a0954362d20a57e326e8cf7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@speclink/cli-linux-arm64/-/cli-linux-arm64-0.18.0.tgz"
      sha256 "14645746377bc7b09fb95142f7234de79691060b1892666df5ca67f61452f54b"
    else
      url "https://registry.npmjs.org/@speclink/cli-linux-x64/-/cli-linux-x64-0.18.0.tgz"
      sha256 "aee9c7cd3ce2f45896b7460b8a931b3c1cde247f5319250c73bd8c6fecfd341b"
    end
  end

  def install
    bin.install "speclink"
  end

  test do
    assert_match "0.18.0", shell_output("#{bin}/speclink --version")
  end
end
