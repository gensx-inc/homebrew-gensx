class Gensx < Formula
  desc "GenSX CLI - The command-line interface for GenSX"
  homepage "https://gensx.com"
  version "0.3.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.21/gensx_0.3.21_macos-arm64.tar.gz"
      sha256 "e8798abf36375c084f9c59eebfe9695f9fb6dbdb606f3bc459234b712458fc85"
    end
    on_intel do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.21/gensx_0.3.21_macos-x64.tar.gz"
      sha256 "0ba50c75c0863c16891dae5778d932821d8ae59d47ab47cc758c70ef5a64e861"
    end
  end

  def install
    binary_name = Hardware::CPU.arm? ? "gensx-cli-macos-arm64" : "gensx-cli-macos-x64"
    bin.install binary_name => "gensx"
    chmod 0755, bin/"gensx"
  end
end
