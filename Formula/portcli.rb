class Portcli < Formula
  desc "CLI tool for Port.io self-service actions"
  homepage "https://github.com/weka/portcli"
  version "1.0.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/portcli/releases/portcli_1.0.1_darwin_arm64.tar.gz"
      sha256 "0be07637a3983277b19b456e7590007f519784d8b6748fb9d013d888fb896795"
    end
    on_intel do
      url "https://weka.github.io/portcli/releases/portcli_1.0.1_darwin_amd64.tar.gz"
      sha256 "57928d4b8007a137afc98286ac197a182973e782e5e31b84406a64e8ba66e0a2"
    end
  end

  def install
    bin.install "portcli"
  end

  test do
    system "#{bin}/portcli", "--version"
  end
end
