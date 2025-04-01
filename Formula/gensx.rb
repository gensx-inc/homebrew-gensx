class Gensx < Formula
  desc "GenSX CLI - The command-line interface for GenSX"
  homepage "https://gensx.com"
  version "0.3.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.16/gensx_0.3.16_macos-arm64.tar.gz"
      sha256 "4d3b5e3275a700a828549db0ddf285a9058d907f3d303e9f0adaa248ff9240a1"
    end
    on_intel do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.16/gensx_0.3.16_macos-x64.tar.gz"
      sha256 "8b5b20af662c25f9ce86f390958c83ca06638bc8fccdfd7c89dd63581b26723e"
    end
  end

  def install
    binary_name = Hardware::CPU.arm? ? "gensx-cli-macos-arm64" : "gensx-cli-macos-x64"
    bin.install binary_name => "gensx"
    chmod 0755, bin/"gensx"
  end
end
