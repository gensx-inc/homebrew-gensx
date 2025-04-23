class Gensx < Formula
  desc "GenSX CLI - The command-line interface for GenSX"
  homepage "https://gensx.com"
  version "0.3.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.22/gensx_0.3.22_macos-arm64.tar.gz"
      sha256 "d9984cd997cfe9bf71734cc5578453b2ca062dbf62f8e500d761cada3cbccc5a"
    end
    on_intel do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.22/gensx_0.3.22_macos-x64.tar.gz"
      sha256 "819b5c8a3e0417ac2ae69faba7ef2cde8eee12bbd45869c1f2f2f06359371d8b"
    end
  end

  def install
    binary_name = Hardware::CPU.arm? ? "gensx-cli-macos-arm64" : "gensx-cli-macos-x64"
    bin.install binary_name => "gensx"
    chmod 0755, bin/"gensx"
  end
end
