class Gensx < Formula
  desc "GenSX CLI - The command-line interface for GenSX"
  homepage "https://gensx.com"
  version "0.3.29"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.29/gensx_0.3.29_macos-arm64.tar.gz"
      sha256 "409b52537bd50d454e6257ffb327c3f5e63bee35da972a00e2b54ced6439658e"
    end
    on_intel do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.29/gensx_0.3.29_macos-x64.tar.gz"
      sha256 "7b4d2af44a5ad9ea1324447e76fbdba5b79b42a641c5f5cced394c054c7a505d"
    end
  end

  def install
    binary_name = Hardware::CPU.arm? ? "gensx-cli-macos-arm64" : "gensx-cli-macos-x64"
    bin.install binary_name => "gensx"
    chmod 0755, bin/"gensx"
  end
end
