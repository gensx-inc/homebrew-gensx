class Gensx < Formula
  desc "GenSX CLI - The command-line interface for GenSX"
  homepage "https://gensx.com"
  version "0.3.41"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.41/gensx_0.3.41_macos-arm64.tar.gz"
      sha256 "4fbd92ef908ed985ac6444aaf599c98deb35405ab812ade43fb18b767a17fa28"
    end
    on_intel do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.41/gensx_0.3.41_macos-x64.tar.gz"
      sha256 "dce0f20b8a60c2c69c26e1f6ed97418d6bb40d2f01488bb818314ac2a2d5b5c5"
    end
  end

  def install
    binary_name = Hardware::CPU.arm? ? "gensx-cli-macos-arm64" : "gensx-cli-macos-x64"
    bin.install binary_name => "gensx"
    chmod 0755, bin/"gensx"
  end
end
