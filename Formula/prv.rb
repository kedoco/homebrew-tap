class Prv < Formula
  desc "File provenance tracker via syscall tracing or shell hooks"
  homepage "https://github.com/kedoco/nix-pipe-tools"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kedoco/nix-pipe-tools/releases/download/v#{version}/nix-pipe-tools-aarch64-apple-darwin.tar.gz"
      sha256 "f8ca47897e6b2d80d9b67685d4a3c6239abca9bc6734198aac504cf0b9b8c83c"
    end
    on_intel do
      url "https://github.com/kedoco/nix-pipe-tools/releases/download/v#{version}/nix-pipe-tools-x86_64-apple-darwin.tar.gz"
      sha256 "79f83fb14d57f5b911cde6df69b0d92c8694e2583157771289bde6475e156dbf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kedoco/nix-pipe-tools/releases/download/v#{version}/nix-pipe-tools-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3df1181b402cd16c8c12277559eedd2123d898ae0e94107dab50b4f239e24bf1"
    end
    on_intel do
      url "https://github.com/kedoco/nix-pipe-tools/releases/download/v#{version}/nix-pipe-tools-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fbb385083aec100eafd75aec5d65b747c5b52112bc58164b074dec8d3107a390"
    end
  end

  def install
    bin.install "prv"
  end

  test do
    assert_match "prv", shell_output("#{bin}/prv --help")
  end
end
