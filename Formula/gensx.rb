class Gensx < Formula
  desc "GenSX CLI - The command-line interface for GenSX"
  homepage "https://gensx.com"
  version "0.3.35"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.35/gensx_0.3.35_macos-arm64.tar.gz"
      sha256 "11749fbf88fc3160155b83a9c0859c4dd542ad274147a0d97f1eb7fa1e9c8ce9"
    end
    on_intel do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.35/gensx_0.3.35_macos-x64.tar.gz"
      sha256 "3a5dff5b7aad3a3ad65df0d3bb49a4d9b7b7dececba2f40fb72151fb003d5bed"
    end
  end

  def install
    binary_name = Hardware::CPU.arm? ? "gensx-cli-macos-arm64" : "gensx-cli-macos-x64"
    bin.install binary_name => "gensx"
    chmod 0755, bin/"gensx"
  end
end
