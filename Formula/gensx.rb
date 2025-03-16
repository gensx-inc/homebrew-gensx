class Gensx < Formula
  desc "GenSX CLI - The command-line interface for GenSX"
  homepage "https://gensx.com"
  version "0.3.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.7/gensx_0.3.7_macos-arm64.tar.gz"
      sha256 "2726b67d36ebb90f21bb997d61b20c5fbe6370a24473e660558da53b1dc92909"
    end
    on_intel do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.7/gensx_0.3.7_macos-x64.tar.gz"
      sha256 "fc10a73b4612ef92a9682c30877a8f4cbc520a5306d92b957eecb8b77a885080"
    end
  end

  def install
    binary_name = Hardware::CPU.arm? ? "gensx-cli-macos-arm64" : "gensx-cli-macos-x64"
    bin.install binary_name => "gensx"
    chmod 0755, bin/"gensx"
  end
end
