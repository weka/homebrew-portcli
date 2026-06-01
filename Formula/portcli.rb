class Portcli < Formula
  desc "CLI tool for Port.io self-service actions"
  homepage "https://github.com/weka/portcli"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/portcli/releases/portcli_1.0.0_darwin_arm64.tar.gz"
      sha256 "b382527f0801cc7db468a04efe4dc03fdc902375287609339452d056ab0dc1ae"
    end
    on_intel do
      url "https://weka.github.io/portcli/releases/portcli_1.0.0_darwin_amd64.tar.gz"
      sha256 "bae0eaa474b056f90971ee9aef16e35986b01e779996b1347c9f812c632c35ae"
    end
  end

  def install
    bin.install "portcli"
  end

  test do
    system "#{bin}/portcli", "--version"
  end
end
