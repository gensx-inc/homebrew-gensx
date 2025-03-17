class Gensx < Formula
  desc "GenSX CLI - The command-line interface for GenSX"
  homepage "https://gensx.com"
  version "0.3.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.9/gensx_0.3.9_macos-arm64.tar.gz"
      sha256 "bcadd3be32faf18d57bec3dce61eb0205589529d8dbb139b4e4b33cf669abc88"
    end
    on_intel do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-v0.3.9/gensx_0.3.9_macos-x64.tar.gz"
      sha256 "b7aaf030a06852f58c3726317ae757b77c4477669f1cb42028e57d121267c189"
    end
  end

  def install
    binary_name = Hardware::CPU.arm? ? "gensx-cli-macos-arm64" : "gensx-cli-macos-x64"
    bin.install binary_name => "gensx"
    chmod 0755, bin/"gensx"
  end
end
