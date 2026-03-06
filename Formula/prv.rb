class Prv < Formula
  desc "File provenance tracker via syscall tracing or shell hooks"
  homepage "https://github.com/kedoco/nix-pipe-tools"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kedoco/nix-pipe-tools/releases/download/v#{version}/nix-pipe-tools-aarch64-apple-darwin.tar.gz"
      sha256 "f6b8f975d86fac6f11384c703c0dedba2ca285d52db962b4b6cac4231b092a9e"
    end
    on_intel do
      url "https://github.com/kedoco/nix-pipe-tools/releases/download/v#{version}/nix-pipe-tools-x86_64-apple-darwin.tar.gz"
      sha256 "cb6ce2fc9f730049af63de3554afccdcae42f0e8e11f08dc351b1179c8972b29"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kedoco/nix-pipe-tools/releases/download/v#{version}/nix-pipe-tools-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "03bd0a8b817baf13d44d51602f93cb2c355ac9299f58c12bd53a821698aa5bec"
    end
    on_intel do
      url "https://github.com/kedoco/nix-pipe-tools/releases/download/v#{version}/nix-pipe-tools-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "33adbaa9297ca98594e6b416390beb3713d7f6a9f4b623e1bf403f16669c76ce"
    end
  end

  def install
    bin.install "prv"
  end

  test do
    assert_match "prv", shell_output("#{bin}/prv --help")
  end
end
