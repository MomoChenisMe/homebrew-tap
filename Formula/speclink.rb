# 由 scripts/homebrew-formula.mjs 產生，請勿手改；改版時重新產生。
class Speclink < Formula
  desc "Spec-Driven Development engine and toolkit"
  homepage "https://github.com/MomoChenisMe/speclink"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MomoChenisMe/speclink/releases/download/v0.1.3/speclink-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "40d005b7accc85fe21701dd969541433a15aa3f37a3ae6a71cb90aecdea5c339"
    else
      url "https://github.com/MomoChenisMe/speclink/releases/download/v0.1.3/speclink-v0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "2cae46dc8fb558ef57375d69b4307fea99109eb2028c32292a4283f8d59fa312"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/MomoChenisMe/speclink/releases/download/v0.1.3/speclink-v0.1.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "744c436b7e8d5cdc2bbf64f8dc7af493dae36270134266028a84fe70d7c52ce9"
    else
      url "https://github.com/MomoChenisMe/speclink/releases/download/v0.1.3/speclink-v0.1.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bb8f37d3ceef6c7d9ce738b1e5e7e38aa98397c9fff09ddb5cb0e5658070a8e0"
    end
  end

  def install
    bin.install "speclink"
  end

  test do
    assert_match "0.1.3", shell_output("#{bin}/speclink --version")
  end
end
