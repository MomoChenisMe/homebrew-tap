# 由 scripts/release/homebrew-formula.mjs 產生，請勿手改；改版時重新產生。
class Speclink < Formula
  desc "Spec-Driven Development engine and toolkit"
  homepage "https://github.com/MomoChenisMe/speclink"
  version "0.17.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@speclink/cli-darwin-arm64/-/cli-darwin-arm64-0.17.0.tgz"
      sha256 "17218438f54fa8e3313c633f8607ac4d26c58ea1124f2d0531e8a6597dc24ba7"
    else
      url "https://registry.npmjs.org/@speclink/cli-darwin-x64/-/cli-darwin-x64-0.17.0.tgz"
      sha256 "6b1e6e9c21ec5ed65a62a3c8eb546cd8043508b991270308330c2e28c5cbbaff"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@speclink/cli-linux-arm64/-/cli-linux-arm64-0.17.0.tgz"
      sha256 "2fb37f737cff1e1fb0b6f061729e16ed35e6e4850c92629544777743f6386892"
    else
      url "https://registry.npmjs.org/@speclink/cli-linux-x64/-/cli-linux-x64-0.17.0.tgz"
      sha256 "5b24b4d8444a044ef8dd4699ff284005f65fbd8a74544092a9b479770724a497"
    end
  end

  def install
    bin.install "speclink"
  end

  test do
    assert_match "0.17.0", shell_output("#{bin}/speclink --version")
  end
end
