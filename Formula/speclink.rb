# 由 scripts/homebrew-formula.mjs 產生，請勿手改；改版時重新產生。
class Speclink < Formula
  desc "Spec-Driven Development engine and toolkit"
  homepage "https://github.com/MomoChenisMe/speclink"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MomoChenisMe/speclink/releases/download/v0.2.0/speclink-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "b357a69f34654683779f84c111bbb73fed5eec537bc4ebc09a01dc10c4b0adea"
    else
      url "https://github.com/MomoChenisMe/speclink/releases/download/v0.2.0/speclink-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "ef85577b847ead25ade37eb754bac27269ad8bfe31665223b0046a20630392f8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/MomoChenisMe/speclink/releases/download/v0.2.0/speclink-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d5a46674d1fe9d45dbc565930b533230f594da7dd4790f6ecdf156318586e539"
    else
      url "https://github.com/MomoChenisMe/speclink/releases/download/v0.2.0/speclink-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b7f16f0f04a8c0673d5c875d216e3a704558b352ba2350a06de661d4a897bff1"
    end
  end

  def install
    bin.install "speclink"
  end

  test do
    assert_match "0.2.0", shell_output("#{bin}/speclink --version")
  end
end
