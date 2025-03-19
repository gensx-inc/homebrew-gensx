class Gensx < Formula
  desc "GenSX CLI - The command-line interface for GenSX"
  homepage "https://gensx.com"
  version "0.3.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.10/gensx_0.3.10_macos-arm64.tar.gz"
      sha256 "a4d4e52b10f37e9347ec809c011c17b8b7bb1ecf5cf4b1254fa9bdea8da12fa0"
    end
    on_intel do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.10/gensx_0.3.10_macos-x64.tar.gz"
      sha256 "278826eb7e4eafe00de8b171b6cf6669c0167f201a01d440c4515e4129393f6d"
    end
  end

  def install
    binary_name = Hardware::CPU.arm? ? "gensx-cli-macos-arm64" : "gensx-cli-macos-x64"
    bin.install binary_name => "gensx"
    chmod 0755, bin/"gensx"
  end
end
