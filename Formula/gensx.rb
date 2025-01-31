class Gensx < Formula
  desc "GenSX CLI - The command-line interface for GenSX"
  homepage "https://gensx.com"
  version "jeremy-cli-d5bebc7980cfd8c2dfe6dd7e5bd6b9b167d8bef4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-vjeremy-cli-d5bebc7980cfd8c2dfe6dd7e5bd6b9b167d8bef4/gensx_jeremy-cli-d5bebc7980cfd8c2dfe6dd7e5bd6b9b167d8bef4_node22-macos-arm64.tar.gz"
      sha256 "9a429df4f88bb182bf274e4ea3c8dcffc5f5d69b7e4f4f950294be3b7b87f250"
    end
    on_intel do
      url "https://github.com/gensx-inc/gensx/releases/download/gensx-cli-binary-vjeremy-cli-d5bebc7980cfd8c2dfe6dd7e5bd6b9b167d8bef4/gensx_jeremy-cli-d5bebc7980cfd8c2dfe6dd7e5bd6b9b167d8bef4_node22-macos-x64.tar.gz"
      sha256 "58bb872d1843538fa94dfbd13274148df3979c623b33ddd5bf4bff84c1a905e9"
    end
  end

  def install
    # Extract the tar.gz file
    system "tar", "xf", cached_download

    # Install the 'run' file as 'gensx' in the bin directory
    bin.install "run" => "gensx"

    # Make the file executable
    chmod 0755, bin/"gensx"
  end
end
