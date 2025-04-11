class Gensx < Formula
  desc "GenSX CLI - The command-line interface for GenSX"
  homepage "https://gensx.com"
  version "0.3.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.20/gensx_0.3.20_macos-arm64.tar.gz"
      sha256 "929ad47a529c6e337f321316dc301157eff6037057c25c87271a5d278bf8a795"
    end
    on_intel do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.20/gensx_0.3.20_macos-x64.tar.gz"
      sha256 "602160398ca4114744efdce7a661b5d06051b9544510d14d37001ba5ec44f65b"
    end
  end

  def install
    binary_name = Hardware::CPU.arm? ? "gensx-cli-macos-arm64" : "gensx-cli-macos-x64"
    bin.install binary_name => "gensx"
    chmod 0755, bin/"gensx"
  end
end
