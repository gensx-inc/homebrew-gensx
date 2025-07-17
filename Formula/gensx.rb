class Gensx < Formula
  desc "GenSX CLI - The command-line interface for GenSX"
  homepage "https://gensx.com"
  version "0.4.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.4.3/gensx_0.4.3_macos-arm64.tar.gz"
      sha256 "176b9c8e7a369ee33d9057362530d0ed2d86380d94448e24ba4d64e40f0939d7"
    end
    on_intel do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.4.3/gensx_0.4.3_macos-x64.tar.gz"
      sha256 "a6126770bf2ee3a37881c2040cf830b62635b885d1dca390de3c1cbd8dcbbf7a"
    end
  end

  def install
    binary_name = Hardware::CPU.arm? ? "gensx-cli-macos-arm64" : "gensx-cli-macos-x64"
    bin.install binary_name => "gensx"
    chmod 0755, bin/"gensx"
  end
end
