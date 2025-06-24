class Gensx < Formula
  desc "GenSX CLI - The command-line interface for GenSX"
  homepage "https://gensx.com"
  version "0.3.40"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.40/gensx_0.3.40_macos-arm64.tar.gz"
      sha256 "877445e0d5a1ebb979267a97e7442172b054967ec6d9d3fc5c9698f57d053cbc"
    end
    on_intel do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.40/gensx_0.3.40_macos-x64.tar.gz"
      sha256 "fc3b6eb02d2930771649930ebacd1d60f3253a2dad8295a9fd502a412ec9563c"
    end
  end

  def install
    binary_name = Hardware::CPU.arm? ? "gensx-cli-macos-arm64" : "gensx-cli-macos-x64"
    bin.install binary_name => "gensx"
    chmod 0755, bin/"gensx"
  end
end
