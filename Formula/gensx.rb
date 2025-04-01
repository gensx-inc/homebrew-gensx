class Gensx < Formula
  desc "GenSX CLI - The command-line interface for GenSX"
  homepage "https://gensx.com"
  version "0.3.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.17/gensx_0.3.17_macos-arm64.tar.gz"
      sha256 "737291bbdd1264d66300e27d01ad3b1ba6897a392bde8283e02ce4d40cab33ef"
    end
    on_intel do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.17/gensx_0.3.17_macos-x64.tar.gz"
      sha256 "4e1372c72b690f22233c598b7827d0f1c46bc7d99b352606e6307eae8f29a9af"
    end
  end

  def install
    binary_name = Hardware::CPU.arm? ? "gensx-cli-macos-arm64" : "gensx-cli-macos-x64"
    bin.install binary_name => "gensx"
    chmod 0755, bin/"gensx"
  end
end
