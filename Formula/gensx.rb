class Gensx < Formula
  desc "GenSX CLI - The command-line interface for GenSX"
  homepage "https://gensx.com"
  version "0.3.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.14/gensx_0.3.14_macos-arm64.tar.gz"
      sha256 "d044fec9cf62b597f68b42d1c2903c800e3ee0a2c2e1cca4edb4379a79de7ed2"
    end
    on_intel do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.14/gensx_0.3.14_macos-x64.tar.gz"
      sha256 "6f2710d5ff37f73a19815053738617e40b180adc3c41d87e00e7075e95889b0e"
    end
  end

  def install
    binary_name = Hardware::CPU.arm? ? "gensx-cli-macos-arm64" : "gensx-cli-macos-x64"
    bin.install binary_name => "gensx"
    chmod 0755, bin/"gensx"
  end
end
