class Portcli < Formula
  desc "CLI tool for Port.io self-service actions"
  homepage "https://github.com/weka/portcli"
  version "1.0.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/portcli/releases/portcli_1.0.2_darwin_arm64.tar.gz"
      sha256 "29218aa59104252a07c162b6c112be153399874a89d5fe8815fa75aa792a20c7"
    end
    on_intel do
      url "https://weka.github.io/portcli/releases/portcli_1.0.2_darwin_amd64.tar.gz"
      sha256 "42d84c7188ea7de5e019533db72c733420d22ecbdd3b225a8ea9c77328dcb04c"
    end
  end

  def install
    bin.install "portcli"
  end

  test do
    system "#{bin}/portcli", "--version"
  end
end
