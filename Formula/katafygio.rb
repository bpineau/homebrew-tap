class Katafygio < Formula
  desc "Dump, or continuously backup Kubernetes objets as yaml files in git"
  homepage "https://github.com/bpineau/katafygio"
  url "https://github.com/bpineau/katafygio/releases/download/v0.8.1/katafygio_0.8.1_darwin_amd64"
  version "0.8.1"
  sha256 "c7be17cac4adc38f010b9afee6e73031a46968dab3015849d07cb8ac5d423964"
  bottle :unneeded

  def install
    mv "katafygio_#{version}_darwin_amd64", "katafygio"
    chmod 0755, "katafygio"
    bin.install "katafygio"
  end

  test do
    system "#{bin}/katafygio", "version"
  end
end
