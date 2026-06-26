class Portcli < Formula
  desc "CLI tool for Port.io self-service actions"
  homepage "https://github.com/weka/portcli"
  version "1.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/portcli/releases/portcli_1.1.0_darwin_arm64.tar.gz"
      sha256 "d1a59a1bdbb492467648228183db8548b08a0d509a4364efb1c7f063734e3fbf"
    end
    on_intel do
      url "https://weka.github.io/portcli/releases/portcli_1.1.0_darwin_amd64.tar.gz"
      sha256 "cab4f9638cd4c5ac8feeb2124d932d604b5c11a36fe7e2b6f8450f2ea392aa1e"
    end
  end

  def install
    bin.install "portcli"
  end

  test do
    system "#{bin}/portcli", "--version"
  end
end
