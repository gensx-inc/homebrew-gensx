class Gensx < Formula
  desc "GenSX CLI - The command-line interface for GenSX"
  homepage "https://gensx.com"
  version "0.3.32"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.32/gensx_0.3.32_macos-arm64.tar.gz"
      sha256 "45528eff1dd40702b9848b1270f32abae2fabde23d12188e47f63045aec1126d"
    end
    on_intel do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.32/gensx_0.3.32_macos-x64.tar.gz"
      sha256 "5ed18d3d251558450c6ee77edd2e39f474b39704c05b614185199ce3ce169c1c"
    end
  end

  def install
    binary_name = Hardware::CPU.arm? ? "gensx-cli-macos-arm64" : "gensx-cli-macos-x64"
    bin.install binary_name => "gensx"
    chmod 0755, bin/"gensx"
  end
end
