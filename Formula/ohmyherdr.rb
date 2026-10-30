class Ohmyherdr < Formula
  desc "Terminal multiplexer for AI coding agents with native profiles"
  homepage "https://github.com/chengyixu/oh-my-herdr"
  url "https://github.com/chengyixu/oh-my-herdr/releases/download/ohmyherdr-v0.9.12/ohmyherdr-macos-aarch64"
  version "0.9.12"
  sha256 "87c130bd708796d0cff79394a165b2689e6a74e14408a5451e181c93658fbf00"
  license "Apache-2.0"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "ohmyherdr-macos-aarch64" => "ohmyherdr"
  end

  def caveats
    <<~EOS
      Run `ohmyherdr` to start or reattach to the terminal multiplexer.
      Upgrade this Homebrew installation with `brew upgrade ohmyherdr`.
      Updating the client does not replace an already running server.
      Check `ohmyherdr status`; use `ohmyherdr server live-handoff` when ready.
    EOS
  end

  test do
    assert_match "ohmyherdr #{version}-ohmyherdr.#{version}", shell_output("#{bin}/ohmyherdr --version")
  end
end
