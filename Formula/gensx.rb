class Gensx < Formula
  desc "GenSX CLI - The command-line interface for GenSX"
  homepage "https://gensx.com"
  version "0.3.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.5/gensx_0.3.5_macos-arm64.tar.gz"
      sha256 "6a9c0ea7c361512e2565563bc568e7502bf37e94de2a07b05cd7817e473b923b"
    end
    on_intel do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.5/gensx_0.3.5_macos-x64.tar.gz"
      sha256 "edbbdc01ed2c9ba32ae8ff0c1a523fedf3b4d9962191e426279a9b84b05e8879"
    end
  end

  def install
    binary_name = Hardware::CPU.arm? ? "gensx-cli-macos-arm64" : "gensx-cli-macos-x64"
    bin.install binary_name => "gensx"
    chmod 0755, bin/"gensx"
  end
end
