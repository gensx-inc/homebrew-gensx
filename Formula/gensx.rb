class Gensx < Formula
  desc "GenSX CLI - The command-line interface for GenSX"
  homepage "https://gensx.com"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.0/gensx_0.3.0_macos-arm64.tar.gz"
      sha256 "6ebfc800b51447dca0607e8ee2dcc897fb9914bc077adc4b9f047470c3cd95ee"
    end
    on_intel do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.0/gensx_0.3.0_macos-x64.tar.gz"
      sha256 "54bfdeba1f673b672eaff01a6055ae271ea2a027389ea0916d48935d670986ab"
    end
  end

  def install
    binary_name = Hardware::CPU.arm? ? "gensx-cli-macos-arm64" : "gensx-cli-macos-x64"
    bin.install binary_name => "gensx"
    chmod 0755, bin/"gensx"
  end
end
