class Gensx < Formula
  desc "GenSX CLI - The command-line interface for GenSX"
  homepage "https://gensx.com"
  version "0.3.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.11/gensx_0.3.11_macos-arm64.tar.gz"
      sha256 "9224d4b25ec0f62a129a6f6220a38a9203b91c8676fbdc079b429201071f0c99"
    end
    on_intel do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.11/gensx_0.3.11_macos-x64.tar.gz"
      sha256 "274bcf215425be6f52fef53e7badf50a81b653bf27b0931efbe82cb8ad590863"
    end
  end

  def install
    binary_name = Hardware::CPU.arm? ? "gensx-cli-macos-arm64" : "gensx-cli-macos-x64"
    bin.install binary_name => "gensx"
    chmod 0755, bin/"gensx"
  end
end
