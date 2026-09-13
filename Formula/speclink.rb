# 由 scripts/release/homebrew-formula.mjs 產生，請勿手改；改版時重新產生。
class Speclink < Formula
  desc "Spec-Driven Development engine and toolkit"
  homepage "https://github.com/MomoChenisMe/speclink"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MomoChenisMe/speclink/releases/download/v0.4.0/speclink-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "b9b5fa9acac137a745f192d6639ddb96f26e9c64ae0c1790fde4734a2de52d9c"
    else
      url "https://github.com/MomoChenisMe/speclink/releases/download/v0.4.0/speclink-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "c5e535d20ea8e21c153d454c5de6657cedec72d03ff995973fd5ceb0df10005c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/MomoChenisMe/speclink/releases/download/v0.4.0/speclink-v0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f2d58407fd413d81e300ef47921ba35f5a3fe12603cb76654d52bdd6f85be368"
    else
      url "https://github.com/MomoChenisMe/speclink/releases/download/v0.4.0/speclink-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7966aa56cfe22af56cefe2c7a1378c32747caa9808ac874a9e57bd474027531f"
    end
  end

  def install
    bin.install "speclink"
  end

  test do
    assert_match "0.4.0", shell_output("#{bin}/speclink --version")
  end
end
