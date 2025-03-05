class Gensx < Formula
  desc "GenSX CLI - The command-line interface for GenSX"
  homepage "https://gensx.com"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.0/gensx_0.3.0_macos-arm64.tar.gz"
      sha256 "7b697d8b72f9dbb161db4a3ca63f5f015fba56c01708903becdab49a46cefb26"
    end
    on_intel do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.0/gensx_0.3.0_macos-x64.tar.gz"
      sha256 "3be53cdb8a9b64d15cb893a4a635a31d08fda0ae4d622698ffa3d76c2a58b7a8"
    end
  end

  def install
    binary_name = Hardware::CPU.arm? ? "gensx-cli-macos-arm64" : "gensx-cli-macos-x64"
    bin.install binary_name => "gensx"
    chmod 0755, bin/"gensx"
  end
end
