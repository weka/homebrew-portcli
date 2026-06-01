class Portcli < Formula
  desc "CLI tool for Port.io self-service actions"
  homepage "https://github.com/weka/portcli"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/portcli/releases/portcli_1.0.0_darwin_arm64.tar.gz"
      sha256 "cda8463f5171cd849f8a68565c1624356beab6da88b739d8b4bb12b897e37816"
    end
    on_intel do
      url "https://weka.github.io/portcli/releases/portcli_1.0.0_darwin_amd64.tar.gz"
      sha256 "20963a56b2fc181a5a111dc7f1ab9bf29d6d93580f13af30c5ddcefda8aca9fe"
    end
  end

  def install
    bin.install "portcli"
  end

  test do
    system "#{bin}/portcli", "--version"
  end
end
