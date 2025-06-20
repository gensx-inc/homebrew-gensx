class Gensx < Formula
  desc "GenSX CLI - The command-line interface for GenSX"
  homepage "https://gensx.com"
  version "0.3.38"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.38/gensx_0.3.38_macos-arm64.tar.gz"
      sha256 "8462c1b8277e7d620375ca96751f824bb921ac40e1c951b61013f800cf1c29b9"
    end
    on_intel do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.38/gensx_0.3.38_macos-x64.tar.gz"
      sha256 "f4120a74b5a69343e2a32fe19aa6352c40c3c318dd29fb05a9cbf7c7311c203e"
    end
  end

  def install
    binary_name = Hardware::CPU.arm? ? "gensx-cli-macos-arm64" : "gensx-cli-macos-x64"
    bin.install binary_name => "gensx"
    chmod 0755, bin/"gensx"
  end
end
