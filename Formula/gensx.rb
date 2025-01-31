class Gensx < Formula
  desc "GenSX CLI"
  homepage "https://gensx.com"
  version "1.0.0"
  url "https://github.com/gensx-inc/homebrew-gensx/releases/download/v0/gensx_jeremy-cli-9ee2a67b773c53b8c5ce058cf95f96f96acaaaeb_node22-macos-arm64.tar.gz"
  sha256 "cb17f7d117a61a52fa00eb9356b2639cf15961ee565ac80cb58745490caac01a"

  # on_macos do
  #   on_arm do
  #   end
    
  #   on_intel do
  #     url "https://github.com/gensx-inc/gensx/releases/download/v1.0.0/gensx-macos-x64.zip"
  #     sha256 "replace_with_intel_mac_sha256"
  #   end
  # end

  # on_linux do
  #   on_intel do
  #     url "https://github.com/gensx-inc/gensx/releases/download/v1.0.0/gensx-linux-x64.zip"
  #     sha256 "replace_with_linux_x64_sha256"
  #   end

  #   on_arm do
  #     url "https://github.com/gensx-inc/gensx/releases/download/v1.0.0/gensx-linux-arm64.zip"
  #     sha256 "replace_with_linux_arm64_sha256"
  #   end
  # end

  def install
    # Extract the tar.gz file
    system "tar", "xf", cached_download

    # Install the 'run' file as 'gensx' in the bin directory
    bin.install "run" => "gensx"

    # Make the file executable
    chmod 0755, bin/"gensx"
  end
end