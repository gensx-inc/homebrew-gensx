class Gensx < Formula
  desc "GenSX CLI - The command-line interface for GenSX"
  homepage "https://gensx.com"
  version "0.3.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.12/gensx_0.3.12_macos-arm64.tar.gz"
      sha256 "8a01ab1ead7bc948d53ad577569ade06306d5e24544cbb10ff13e6270220d617"
    end
    on_intel do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.12/gensx_0.3.12_macos-x64.tar.gz"
      sha256 "51fe619e401a4acad783d1e8ed30c0002d193ff1015248688af17c066242290a"
    end
  end

  def install
    binary_name = Hardware::CPU.arm? ? "gensx-cli-macos-arm64" : "gensx-cli-macos-x64"
    bin.install binary_name => "gensx"
    chmod 0755, bin/"gensx"
  end
end
