class Portcli < Formula
  desc "CLI tool for Port.io self-service actions"
  homepage "https://github.com/weka/portcli"
  version "1.0.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/portcli/releases/portcli_1.0.3_darwin_arm64.tar.gz"
      sha256 "957614f47fbb1a8491278279a7889c35861e824e2499484d422411e25c444d34"
    end
    on_intel do
      url "https://weka.github.io/portcli/releases/portcli_1.0.3_darwin_amd64.tar.gz"
      sha256 "4cda792e5676a10a2a6d541cc7c9692f60b5ebea901dcb1ffc827c2378cb8850"
    end
  end

  def install
    bin.install "portcli"
  end

  test do
    system "#{bin}/portcli", "--version"
  end
end
