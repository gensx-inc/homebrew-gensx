class Gensx < Formula
  desc "GenSX CLI - The command-line interface for GenSX"
  homepage "https://gensx.com"
  version "0.3.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.15/gensx_0.3.15_macos-arm64.tar.gz"
      sha256 "22d4c97354b5ef7448b39a76c9ebd313689845831387bbb535c6ee532b9c30f0"
    end
    on_intel do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.15/gensx_0.3.15_macos-x64.tar.gz"
      sha256 "ac29294af51cb2fd2eaa5656555eb42e8b8fa1f25c5e15ffeed6d5a52ba3740e"
    end
  end

  def install
    binary_name = Hardware::CPU.arm? ? "gensx-cli-macos-arm64" : "gensx-cli-macos-x64"
    bin.install binary_name => "gensx"
    chmod 0755, bin/"gensx"
  end
end
