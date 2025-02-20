class Gensx < Formula
  desc "GenSX CLI - The command-line interface for GenSX"
  homepage "https://gensx.com"
  version ""
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v/gensx__node22-macos-arm64.tar.gz"
      sha256 "fa214f84d14296f169588247b62b70d81d0b2ef7e30ea0bd4e90eaea1b9c198d"
    end
    on_intel do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v/gensx__node22-macos-x64.tar.gz"
      sha256 "a98c51afbaf76b1ffffb411fc148fe4356809303f255cb08f326ca59cf01d214"
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
