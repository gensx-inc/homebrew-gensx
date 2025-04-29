class Gensx < Formula
  desc "GenSX CLI - The command-line interface for GenSX"
  homepage "https://gensx.com"
  version "0.3.26"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.26/gensx_0.3.26_macos-arm64.tar.gz"
      sha256 "4f70dfa3536635f2e9bb6149a3022ae82b21cf0bf9c17392b89e2565182ca0f3"
    end
    on_intel do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.26/gensx_0.3.26_macos-x64.tar.gz"
      sha256 "0766ba76c629fa996958135348dee43bb39fb29ac2f64461c8f3b1a55d83d80d"
    end
  end

  def install
    binary_name = Hardware::CPU.arm? ? "gensx-cli-macos-arm64" : "gensx-cli-macos-x64"
    bin.install binary_name => "gensx"
    chmod 0755, bin/"gensx"
  end
end
