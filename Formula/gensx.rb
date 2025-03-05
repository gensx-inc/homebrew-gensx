class Gensx < Formula
  desc "GenSX CLI - The command-line interface for GenSX"
  homepage "https://gensx.com"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.0/gensx_0.3.0_macos-arm64.tar.gz"
      sha256 "624519de263666573def90dc0c4aaacf82a7c2a2a89404f41f22eda43eda0307"
    end
    on_intel do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.0/gensx_0.3.0_macos-x64.tar.gz"
      sha256 "81b0be8cb206f77407c90f359bcd0fdd3236c1a1641163d392b3f0ea2be6bc31"
    end
  end

  def install
    binary_name = Hardware::CPU.arm? ? "gensx-cli-macos-arm64" : "gensx-cli-macos-x64"
    bin.install binary_name => "gensx"
    chmod 0755, bin/"gensx"
  end
end
