class Portcli < Formula
  desc "CLI tool for Port.io self-service actions"
  homepage "https://github.com/weka/portcli"
  version "1.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/portcli/releases/portcli_1.2.0_darwin_arm64.tar.gz"
      sha256 "6917e6ab0160fd9ea4e7f7342cfd3a634e8ce8a9cf6554d0fa7ab280875125dd"
    end
    on_intel do
      url "https://weka.github.io/portcli/releases/portcli_1.2.0_darwin_amd64.tar.gz"
      sha256 "93fad9b67a0784add974f673015031400ad3502e9798c9bac4a2ec890e1a5445"
    end
  end

  def install
    bin.install "portcli"
  end

  test do
    system "#{bin}/portcli", "--version"
  end
end
