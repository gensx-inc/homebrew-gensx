class Gensx < Formula
  desc "GenSX CLI - The command-line interface for GenSX"
  homepage "https://gensx.com"
  version "0.3.34"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.34/gensx_0.3.34_macos-arm64.tar.gz"
      sha256 "4e9677632fde2b39925d2750b16dbeab5f55d39a454310af4ad9790eab3c8f5a"
    end
    on_intel do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.34/gensx_0.3.34_macos-x64.tar.gz"
      sha256 "572c356bb54a6b6461faac51810e7e94cab1ea1669ed5ad43e7a382c7b3626bf"
    end
  end

  def install
    binary_name = Hardware::CPU.arm? ? "gensx-cli-macos-arm64" : "gensx-cli-macos-x64"
    bin.install binary_name => "gensx"
    chmod 0755, bin/"gensx"
  end
end
