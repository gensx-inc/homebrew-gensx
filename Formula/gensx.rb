class Gensx < Formula
  desc "GenSX CLI - The command-line interface for GenSX"
  homepage "https://gensx.com"
  version "0.3.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.13/gensx_0.3.13_macos-arm64.tar.gz"
      sha256 "8b7ec366389b50d8f4f6c61928af44ae800e3beef6310925f283217f9513c2e2"
    end
    on_intel do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.13/gensx_0.3.13_macos-x64.tar.gz"
      sha256 "bb2ec62f77221161ff3746bca21a657b228b76cd6c7f3b3e3de75a90ccd93fec"
    end
  end

  def install
    binary_name = Hardware::CPU.arm? ? "gensx-cli-macos-arm64" : "gensx-cli-macos-x64"
    bin.install binary_name => "gensx"
    chmod 0755, bin/"gensx"
  end
end
