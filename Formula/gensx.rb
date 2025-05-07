class Gensx < Formula
  desc "GenSX CLI - The command-line interface for GenSX"
  homepage "https://gensx.com"
  version "0.3.28"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.28/gensx_0.3.28_macos-arm64.tar.gz"
      sha256 "611d409affdc56c47458e0fd316f222e9549a8a1cc31feccd67a310e40940336"
    end
    on_intel do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.28/gensx_0.3.28_macos-x64.tar.gz"
      sha256 "c0eaea7a43303a537b1fc8470c845627606b6caf8445ada6ab751c0d83eed65a"
    end
  end

  def install
    binary_name = Hardware::CPU.arm? ? "gensx-cli-macos-arm64" : "gensx-cli-macos-x64"
    bin.install binary_name => "gensx"
    chmod 0755, bin/"gensx"
  end
end
