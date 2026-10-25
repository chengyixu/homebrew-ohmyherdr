class Ohmyherdr < Formula
  desc "Terminal multiplexer for AI coding agents with native profiles"
  homepage "https://github.com/chengyixu/oh-my-herdr"
  version "0.9.8"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/chengyixu/oh-my-herdr/releases/download/ohmyherdr-v0.9.8/ohmyherdr-macos-aarch64"
      sha256 "45c37ad93789ded32a17da5678afea80f1474b213ebd5c952f69fab3ec0c2a75"
    end
  end

  def install
    bin.install "ohmyherdr-macos-aarch64" => "ohmyherdr"
  end

  def caveats
    <<~EOS
      Ohmyherdr 0.9.8 supports Apple Silicon macOS only.
      Run `ohmyherdr` to start the terminal multiplexer.
    EOS
  end

  test do
    assert_match "ohmyherdr", shell_output("#{bin}/ohmyherdr --version")
  end
end
