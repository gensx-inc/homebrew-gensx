class Gensx < Formula
  desc "GenSX CLI - The command-line interface for GenSX"
  homepage "https://gensx.com"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.0/gensx_0.3.0_macos-arm64.tar.gz"
      sha256 "634d68a1ba483b16b83a74f6ba394469dbd15ad8331c177ee5f5b7e60edab21a"
    end
    on_intel do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.0/gensx_0.3.0_macos-x64.tar.gz"
      sha256 "63ceb94f860fa96ab3f93614798ec3dde072b2ee5f38ed8d7c175a7debaa77c8"
    end
  end

  def install
    binary_name = Hardware::CPU.arm? ? "gensx-cli-macos-arm64" : "gensx-cli-macos-x64"
    bin.install binary_name => "gensx"
    chmod 0755, bin/"gensx"
  end
end
