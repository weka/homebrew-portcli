class Portcli < Formula
  desc "CLI tool for Port.io self-service actions"
  homepage "https://github.com/weka/portcli"
  version "1.2.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/portcli/releases/portcli_1.2.1_darwin_arm64.tar.gz"
      sha256 "3ae64225b490e4bebb57c9d2ffe10074ea729999f053094fe2f012c3eb0c84c6"
    end
    on_intel do
      url "https://weka.github.io/portcli/releases/portcli_1.2.1_darwin_amd64.tar.gz"
      sha256 "3c4444f6518e99b351e936cdc8a5ce86310dec5e53f8fbe90c9c93fb68de55aa"
    end
  end

  def install
    bin.install "portcli"
  end

  test do
    system "#{bin}/portcli", "--version"
  end
end
