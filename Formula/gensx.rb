class Gensx < Formula
  desc "GenSX CLI - The command-line interface for GenSX"
  homepage "https://gensx.com"
  version "0.3.23"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.23/gensx_0.3.23_macos-arm64.tar.gz"
      sha256 "f56f33cd33ca2244b70c872a687cdb78919d1a00ad0b9fdd216a0e15b10cb76b"
    end
    on_intel do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.23/gensx_0.3.23_macos-x64.tar.gz"
      sha256 "2e4c767461bfe7a27d002c4a2aac043d4a1f9d588fad694c2b1116d5813971e4"
    end
  end

  def install
    binary_name = Hardware::CPU.arm? ? "gensx-cli-macos-arm64" : "gensx-cli-macos-x64"
    bin.install binary_name => "gensx"
    chmod 0755, bin/"gensx"
  end
end
