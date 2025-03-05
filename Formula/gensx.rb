class Gensx < Formula
  desc "GenSX CLI - The command-line interface for GenSX"
  homepage "https://gensx.com"
  version ""
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v/gensx__macos-arm64.tar.gz"
      sha256 "c7703fea855dffd40cb16d410d3e009cf55c3aa3281d2523bc5f01fe6f48147d"
    end
    on_intel do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v/gensx__macos-x64.tar.gz"
      sha256 "21467791b877efe91b2f12105be6582ab5b4beff110c01bd3c6cb0cda57eaaba"
    end
  end

  def install
    binary_name = Hardware::CPU.arm? ? "gensx-cli-macos-arm64" : "gensx-cli-macos-x64"
    bin.install binary_name => "gensx"
    chmod 0755, bin/"gensx"
  end
end
