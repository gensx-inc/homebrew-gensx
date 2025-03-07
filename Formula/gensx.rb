class Gensx < Formula
  desc "GenSX CLI - The command-line interface for GenSX"
  homepage "https://gensx.com"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.3/gensx_0.3.3_macos-arm64.tar.gz"
      sha256 "52c356ce37dc9f4f5b12763a128d3656a45e001f9160eb33073179011810ba26"
    end
    on_intel do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.3/gensx_0.3.3_macos-x64.tar.gz"
      sha256 "58afcab66ae8f8000907afcc5c05687a95f7979a5d3cff3079e6bc0797fcaf50"
    end
  end

  def install
    binary_name = Hardware::CPU.arm? ? "gensx-cli-macos-arm64" : "gensx-cli-macos-x64"
    bin.install binary_name => "gensx"
    chmod 0755, bin/"gensx"
  end
end
