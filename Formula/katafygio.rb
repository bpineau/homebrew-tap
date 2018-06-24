class Katafygio < Formula
  desc "Dump, or continuously backup Kubernetes objets as yaml files in git"
  homepage "https://github.com/bpineau/katafygio"
  url "https://github.com/bpineau/katafygio/releases/download/v0.7.1/katafygio_0.7.1_darwin_amd64"
  version "0.7.1"
  sha256 "7b3aaeec36213adae4e95fb3bd0f812126a30ef3033e0b6b1861e6c0841116e0"
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
