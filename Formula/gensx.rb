class Gensx < Formula
  desc "GenSX CLI - The command-line interface for GenSX"
  homepage "https://gensx.com"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.1/gensx_0.3.1_macos-arm64.tar.gz"
      sha256 "0da15983680db06f0fee5d3fdfd9da2c7ddee578b0a7e5f0b8c303614d39ead2"
    end
    on_intel do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.1/gensx_0.3.1_macos-x64.tar.gz"
      sha256 "2f9f5927fa2a63a70feb4bbf1aa60359b8c5783ff6da3a4dfbf8705ae5698d84"
    end
  end

  def install
    binary_name = Hardware::CPU.arm? ? "gensx-cli-macos-arm64" : "gensx-cli-macos-x64"
    bin.install binary_name => "gensx"
    chmod 0755, bin/"gensx"
  end
end
