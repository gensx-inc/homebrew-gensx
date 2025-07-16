class Gensx < Formula
  desc "GenSX CLI - The command-line interface for GenSX"
  homepage "https://gensx.com"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.4.2/gensx_0.4.2_macos-arm64.tar.gz"
      sha256 "9d7a2a9dc8ca64ed5afb7e6a8ae92dfb5f8bfd34444dc263f3c294ad2e1b0ea6"
    end
    on_intel do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.4.2/gensx_0.4.2_macos-x64.tar.gz"
      sha256 "f95d9b0ff7dc91a1e4f347f1b6cebfb713a61ac1572b143281c85a45b557879e"
    end
  end

  def install
    binary_name = Hardware::CPU.arm? ? "gensx-cli-macos-arm64" : "gensx-cli-macos-x64"
    bin.install binary_name => "gensx"
    chmod 0755, bin/"gensx"
  end
end
