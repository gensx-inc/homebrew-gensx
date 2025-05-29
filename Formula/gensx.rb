class Gensx < Formula
  desc "GenSX CLI - The command-line interface for GenSX"
  homepage "https://gensx.com"
  version "0.3.33"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.33/gensx_0.3.33_macos-arm64.tar.gz"
      sha256 "ad2227535e59c8164688960d584ac678838d5a1f11b56f979ae10481e8772388"
    end
    on_intel do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.33/gensx_0.3.33_macos-x64.tar.gz"
      sha256 "bda023a1f2ed680459ff3f53c65dfcb6fd3507f4a54e0f678f614a5ac5a5904f"
    end
  end

  def install
    binary_name = Hardware::CPU.arm? ? "gensx-cli-macos-arm64" : "gensx-cli-macos-x64"
    bin.install binary_name => "gensx"
    chmod 0755, bin/"gensx"
  end
end
