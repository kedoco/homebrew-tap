class Memo < Formula
  desc "Content-addressed command memoization"
  homepage "https://github.com/kedoco/nix-pipe-tools"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kedoco/nix-pipe-tools/releases/download/v#{version}/nix-pipe-tools-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/kedoco/nix-pipe-tools/releases/download/v#{version}/nix-pipe-tools-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kedoco/nix-pipe-tools/releases/download/v#{version}/nix-pipe-tools-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/kedoco/nix-pipe-tools/releases/download/v#{version}/nix-pipe-tools-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "memo"
  end

  test do
    assert_match "memo", shell_output("#{bin}/memo --help")
  end
end
