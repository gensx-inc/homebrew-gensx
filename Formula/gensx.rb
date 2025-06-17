class Gensx < Formula
  desc "GenSX CLI - The command-line interface for GenSX"
  homepage "https://gensx.com"
  version "0.3.37"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.37/gensx_0.3.37_macos-arm64.tar.gz"
      sha256 "38c3e56b2d0b5a1cc5c3ab0f804936150eac21c3e34f482825cf306f5c5c71e1"
    end
    on_intel do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.37/gensx_0.3.37_macos-x64.tar.gz"
      sha256 "5c61d03ed0aca2e4f8df90facad084cb3f0b2410d77046dae2f2e1d47767a77a"
    end
  end

  def install
    binary_name = Hardware::CPU.arm? ? "gensx-cli-macos-arm64" : "gensx-cli-macos-x64"
    bin.install binary_name => "gensx"
    chmod 0755, bin/"gensx"
  end
end
