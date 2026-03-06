class Tap < Formula
  desc "Pipeline stage debugger and named snapshot capture"
  homepage "https://github.com/kedoco/nix-pipe-tools"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kedoco/nix-pipe-tools/releases/download/v#{version}/nix-pipe-tools-aarch64-apple-darwin.tar.gz"
      sha256 "7963a1a0aa5d53a8f512d146cd1c2ab8d3d883341391cf2003387da331fd45fe"
    end
    on_intel do
      url "https://github.com/kedoco/nix-pipe-tools/releases/download/v#{version}/nix-pipe-tools-x86_64-apple-darwin.tar.gz"
      sha256 "df24f7b508e28752c3027a010ff2250c32190ea876e38c0bb2798e3254bc30c6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kedoco/nix-pipe-tools/releases/download/v#{version}/nix-pipe-tools-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "206dbe4958891cc1ca386151db9900ed0c86eaa3ec7b57ecf77715d3e931f7c4"
    end
    on_intel do
      url "https://github.com/kedoco/nix-pipe-tools/releases/download/v#{version}/nix-pipe-tools-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e296126079a7ff4bc0bc3dfadd9cdeef12155c929e64b41b5527b92805990415"
    end
  end

  def install
    bin.install "tap"
  end

  test do
    assert_match "tap", shell_output("#{bin}/tap --help")
  end
end
