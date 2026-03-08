class Memo < Formula
  desc "Content-addressed command memoization"
  homepage "https://github.com/kedoco/nix-pipe-tools"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kedoco/nix-pipe-tools/releases/download/v#{version}/nix-pipe-tools-aarch64-apple-darwin.tar.gz"
      sha256 "5d04c338744f8973afe3e1185506d85703c83c0120b2d1763ced6992c6269f73"
    end
    on_intel do
      url "https://github.com/kedoco/nix-pipe-tools/releases/download/v#{version}/nix-pipe-tools-x86_64-apple-darwin.tar.gz"
      sha256 "ce0d83879e368e4f9a7cd9bc040d498a742108eac36c15e62a037f7f88319c1e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kedoco/nix-pipe-tools/releases/download/v#{version}/nix-pipe-tools-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e904990887f0087f59edf558fdfd3b71e9e986b2657d30696faf517576fbaed1"
    end
    on_intel do
      url "https://github.com/kedoco/nix-pipe-tools/releases/download/v#{version}/nix-pipe-tools-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bc3527b21a69ceb4f4aa8eae664a87b2b7bad897a2afa9552ca688a9d710a0c9"
    end
  end

  def install
    bin.install "memo"
  end

  test do
    assert_match "memo", shell_output("#{bin}/memo --help")
  end
end
