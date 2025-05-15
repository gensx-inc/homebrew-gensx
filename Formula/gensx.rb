class Gensx < Formula
  desc "GenSX CLI - The command-line interface for GenSX"
  homepage "https://gensx.com"
  version "0.3.30"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.30/gensx_0.3.30_macos-arm64.tar.gz"
      sha256 "6966fe48adc0a7072c4b5012ed4c8a89fb9da061ddb9f1437901cc0a530dd53b"
    end
    on_intel do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.30/gensx_0.3.30_macos-x64.tar.gz"
      sha256 "1f805aef21390da76ed3b0ab31e74f6e9e987216540377ce8b945b4711f19658"
    end
  end

  def install
    binary_name = Hardware::CPU.arm? ? "gensx-cli-macos-arm64" : "gensx-cli-macos-x64"
    bin.install binary_name => "gensx"
    chmod 0755, bin/"gensx"
  end
end
