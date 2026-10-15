# 由 scripts/release/homebrew-formula.mjs 產生，請勿手改；改版時重新產生。
class Speclink < Formula
  desc "Spec-Driven Development engine and toolkit"
  homepage "https://github.com/MomoChenisMe/speclink"
  version "0.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@speclink/cli-darwin-arm64/-/cli-darwin-arm64-0.9.0.tgz"
      sha256 "7508fc601fd7c56ed55136a406485da306d9dd56b351112f1fb1dd3a02b311a0"
    else
      url "https://registry.npmjs.org/@speclink/cli-darwin-x64/-/cli-darwin-x64-0.9.0.tgz"
      sha256 "4a5f9f25264fb84caa569bb4858ae883a6b0268f0b61cb61a2b112a3b15eb30d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@speclink/cli-linux-arm64/-/cli-linux-arm64-0.9.0.tgz"
      sha256 "e1a1df0812f928faf972cda6bf291f3742a8368249938148ec0fc2a5b6636502"
    else
      url "https://registry.npmjs.org/@speclink/cli-linux-x64/-/cli-linux-x64-0.9.0.tgz"
      sha256 "21b5570019c4f359bf9ce5782af80476ccb7f71a6de1ba05f39d75394a77d1d1"
    end
  end

  def install
    bin.install "speclink"
  end

  test do
    assert_match "0.9.0", shell_output("#{bin}/speclink --version")
  end
end
