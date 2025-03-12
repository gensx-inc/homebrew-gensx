class Gensx < Formula
  desc "GenSX CLI - The command-line interface for GenSX"
  homepage "https://gensx.com"
  version "0.3.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.4/gensx_0.3.4_macos-arm64.tar.gz"
      sha256 "4adbbba9b1aced5b3bffbdd52e6f1de606fc842488df90f4922d7e2f30f85569"
    end
    on_intel do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.4/gensx_0.3.4_macos-x64.tar.gz"
      sha256 "6e3a5cc6cd71ba19d3f088452a1289405befff14c325bdb43d2881f6aa2ffccf"
    end
  end

  def install
    binary_name = Hardware::CPU.arm? ? "gensx-cli-macos-arm64" : "gensx-cli-macos-x64"
    bin.install binary_name => "gensx"
    chmod 0755, bin/"gensx"
  end
end
