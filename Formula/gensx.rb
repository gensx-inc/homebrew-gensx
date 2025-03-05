class Gensx < Formula
  desc "GenSX CLI - The command-line interface for GenSX"
  homepage "https://gensx.com"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.2/gensx_0.3.2_macos-arm64.tar.gz"
      sha256 "4e3a0b7fec88ef662b888842a78d80bbb85e2383e6e93785d5073da31e21746a"
    end
    on_intel do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.2/gensx_0.3.2_macos-x64.tar.gz"
      sha256 "8c408a6c3eebd04066409c633ba1ad57b7c19db98303f1de7bb892f0d0f84415"
    end
  end

  def install
    binary_name = Hardware::CPU.arm? ? "gensx-cli-macos-arm64" : "gensx-cli-macos-x64"
    bin.install binary_name => "gensx"
    chmod 0755, bin/"gensx"
  end
end
