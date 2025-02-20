class Gensx < Formula
  desc "GenSX CLI - The command-line interface for GenSX"
  homepage "https://gensx.com"
  version "0.1.1-1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.1.1-1/gensx_0.1.1-1_node22-macos-arm64.tar.gz"
      sha256 "c2c56c2b2bf9c6066a85e0b93aef6ef330ef5a0c0e898a4d80f80ae11beceba7"
    end
    on_intel do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.1.1-1/gensx_0.1.1-1_node22-macos-x64.tar.gz"
      sha256 "4c87d76f8ae2a9e53ef1e71ee298dfd7700a6107061b376c102ec520bf377292"
    end
  end

  def install
    # Extract the tar.gz file
    system "tar", "xf", cached_download

    # Install the 'run' file as 'gensx' in the bin directory
    bin.install "run" => "gensx"

    # Make the file executable
    chmod 0755, bin/"gensx"
  end
end
