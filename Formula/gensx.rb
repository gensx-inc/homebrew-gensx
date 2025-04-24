class Gensx < Formula
  desc "GenSX CLI - The command-line interface for GenSX"
  homepage "https://gensx.com"
  version "0.3.24"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.24/gensx_0.3.24_macos-arm64.tar.gz"
      sha256 "366a5fc0e7d060b55647d2b25377637058eec482b47aa84af589b3eab4335f1f"
    end
    on_intel do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.24/gensx_0.3.24_macos-x64.tar.gz"
      sha256 "5104fc8257e8a552b13b4a82b351f7c8287980c11a719d1221c34fca2c06e897"
    end
  end

  def install
    binary_name = Hardware::CPU.arm? ? "gensx-cli-macos-arm64" : "gensx-cli-macos-x64"
    bin.install binary_name => "gensx"
    chmod 0755, bin/"gensx"
  end
end
