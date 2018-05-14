class Katafygio < Formula
  desc "Dump, or continuously backup Kubernetes objets as yaml files in git"
  homepage "https://github.com/bpineau/katafygio"
  url "https://github.com/bpineau/katafygio/releases/download/v0.7.0/katafygio_0.7.0_darwin_amd64"
  version "0.7.0"
  sha256 "ff515fcc9df9fdd18321d3580c2e1d447b933b1b893e1b31e33919fc71198791"
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
