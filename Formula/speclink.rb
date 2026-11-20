# 由 scripts/release/homebrew-formula.mjs 產生，請勿手改；改版時重新產生。
class Speclink < Formula
  desc "Spec-Driven Development engine and toolkit"
  homepage "https://github.com/MomoChenisMe/speclink"
  version "0.13.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@speclink/cli-darwin-arm64/-/cli-darwin-arm64-0.13.1.tgz"
      sha256 "30ca5b997b514a5eaa70834c0f73d45286bb280886a036b1eec96400403b9734"
    else
      url "https://registry.npmjs.org/@speclink/cli-darwin-x64/-/cli-darwin-x64-0.13.1.tgz"
      sha256 "dbaaab9abaced3b7b8707d064215053d91105b6de4b5032344892c07fd400ea4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@speclink/cli-linux-arm64/-/cli-linux-arm64-0.13.1.tgz"
      sha256 "16c84b56f887663e96bb28ac7b92178255f120eaacd0f63901b60b5fae9aa61e"
    else
      url "https://registry.npmjs.org/@speclink/cli-linux-x64/-/cli-linux-x64-0.13.1.tgz"
      sha256 "78c1ef2a25188dad382b508d66de28b13916ba388424858b182b117c5abaca4b"
    end
  end

  def install
    bin.install "speclink"
  end

  test do
    assert_match "0.13.1", shell_output("#{bin}/speclink --version")
  end
end
