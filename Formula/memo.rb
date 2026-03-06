class Memo < Formula
  desc "Content-addressed command memoization"
  homepage "https://github.com/kedoco/nix-pipe-tools"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kedoco/nix-pipe-tools/releases/download/v#{version}/nix-pipe-tools-aarch64-apple-darwin.tar.gz"
      sha256 "a818c6c45bf1939438a69bc63d2f2c2bbe128d6c006668fa1be7b68c91eafe2e"
    end
    on_intel do
      url "https://github.com/kedoco/nix-pipe-tools/releases/download/v#{version}/nix-pipe-tools-x86_64-apple-darwin.tar.gz"
      sha256 "38c611554aa48b85804e6effbd3d1a0bd17ca36097dedb0f3cfdae94eedf2fb8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kedoco/nix-pipe-tools/releases/download/v#{version}/nix-pipe-tools-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "21669e64e51f337f4cc64d8750bffa46d8c208a9a72631c31a571c981462fa31"
    end
    on_intel do
      url "https://github.com/kedoco/nix-pipe-tools/releases/download/v#{version}/nix-pipe-tools-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7c8eb8471e7352fd090eb329cbc339474d3a10287d0898e07cb443f22475f957"
    end
  end

  def install
    bin.install "memo"
  end

  test do
    assert_match "memo", shell_output("#{bin}/memo --help")
  end
end
