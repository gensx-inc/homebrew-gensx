class Gensx < Formula
  desc "GenSX CLI - The command-line interface for GenSX"
  homepage "https://gensx.com"
  version "0.3.27"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.27/gensx_0.3.27_macos-arm64.tar.gz"
      sha256 "14454099d090ccbe3ea629072ff121a422732eeac135cfed32d5c1681d1fe745"
    end
    on_intel do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.27/gensx_0.3.27_macos-x64.tar.gz"
      sha256 "5e414c1e0d09d4707626bc085738b80e60bffc54f9a272f39b28e877b4f765dc"
    end
  end

  def install
    binary_name = Hardware::CPU.arm? ? "gensx-cli-macos-arm64" : "gensx-cli-macos-x64"
    bin.install binary_name => "gensx"
    chmod 0755, bin/"gensx"
  end
end
