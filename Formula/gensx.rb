class Gensx < Formula
  desc "GenSX CLI - The command-line interface for GenSX"
  homepage "https://gensx.com"
  version "0.3.25"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.25/gensx_0.3.25_macos-arm64.tar.gz"
      sha256 "42e65759448663362370c96ba91d042bc64b819ecbcd2b8d362044365c148741"
    end
    on_intel do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.25/gensx_0.3.25_macos-x64.tar.gz"
      sha256 "b575bf60772902688bf4e4543ea051175d999b34284433f096704681dfe26804"
    end
  end

  def install
    binary_name = Hardware::CPU.arm? ? "gensx-cli-macos-arm64" : "gensx-cli-macos-x64"
    bin.install binary_name => "gensx"
    chmod 0755, bin/"gensx"
  end
end
