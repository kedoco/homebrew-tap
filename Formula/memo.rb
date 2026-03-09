class Memo < Formula
  desc "Content-addressed command memoization"
  homepage "https://github.com/kedoco/nix-pipe-tools"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kedoco/nix-pipe-tools/releases/download/v#{version}/nix-pipe-tools-aarch64-apple-darwin.tar.gz"
      sha256 "d479eabdd154033df0ac302d998c44c2b2d313e98762225002a9fa8ce9247953"
    end
    on_intel do
      url "https://github.com/kedoco/nix-pipe-tools/releases/download/v#{version}/nix-pipe-tools-x86_64-apple-darwin.tar.gz"
      sha256 "bae473481bc0bd29fafaa650bd8083b6c1d36f0960ef90b26158e641f381f990"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kedoco/nix-pipe-tools/releases/download/v#{version}/nix-pipe-tools-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c390543bc6d016c62e4aaa8a2f1e57e203fcf96f7098ced92ba4c5468279b686"
    end
    on_intel do
      url "https://github.com/kedoco/nix-pipe-tools/releases/download/v#{version}/nix-pipe-tools-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5c887f459cf622da021436545b67646eb89023f369a199c4b0fbc4af09290963"
    end
  end

  def install
    bin.install "memo"
  end

  test do
    assert_match "memo", shell_output("#{bin}/memo --help")
  end
end
