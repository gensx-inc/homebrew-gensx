class Gensx < Formula
  desc "GenSX CLI - The command-line interface for GenSX"
  homepage "https://gensx.com"
  version "0.3.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.18/gensx_0.3.18_macos-arm64.tar.gz"
      sha256 "ecd07146b8082e068ad84bc9506532545e53739b8158019bd794c510e2e59f18"
    end
    on_intel do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.18/gensx_0.3.18_macos-x64.tar.gz"
      sha256 "d797174bc58dd18e7eade98f2c00545d2fa451836538b7018d32f41a5295a9eb"
    end
  end

  def install
    binary_name = Hardware::CPU.arm? ? "gensx-cli-macos-arm64" : "gensx-cli-macos-x64"
    bin.install binary_name => "gensx"
    chmod 0755, bin/"gensx"
  end
end
