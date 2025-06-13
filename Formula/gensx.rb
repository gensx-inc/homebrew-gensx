class Gensx < Formula
  desc "GenSX CLI - The command-line interface for GenSX"
  homepage "https://gensx.com"
  version "0.3.36"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.36/gensx_0.3.36_macos-arm64.tar.gz"
      sha256 "9350a3fb8a5bf0914e4b3d7f7f6dd48b00c084609d0d610464d4c4464691669b"
    end
    on_intel do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.36/gensx_0.3.36_macos-x64.tar.gz"
      sha256 "41ca12e84a2b5e8cdbe8f7711e28f03f1239ab989e1dcda5aeeb32a50d667018"
    end
  end

  def install
    binary_name = Hardware::CPU.arm? ? "gensx-cli-macos-arm64" : "gensx-cli-macos-x64"
    bin.install binary_name => "gensx"
    chmod 0755, bin/"gensx"
  end
end
