class Gensx < Formula
  desc "GenSX CLI - The command-line interface for GenSX"
  homepage "https://gensx.com"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.1.1/gensx_0.1.1_node22-macos-arm64.tar.gz"
      sha256 "7ba00c81ceee08fc83fc5173663c724508e5cfbb5cc0cfeb1c3aa32530800900"
    end
    on_intel do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.1.1/gensx_0.1.1_node22-macos-x64.tar.gz"
      sha256 "160cfba1b27ee3c24e3df3a647d7e1c0d3be659638464ad97bc6e7ef8f7680bd"
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
