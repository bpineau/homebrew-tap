class Katafygio < Formula
  desc "Dump, or continuously backup Kubernetes objets as yaml files in git"
  homepage "https://github.com/bpineau/katafygio"
  url "https://github.com/bpineau/katafygio/releases/download/v0.7.3/katafygio_0.7.3_darwin_amd64"
  version "0.7.3"
  sha256 "bccade6d3047334a9840f0d18918b76de8d66b475b0e9e683842937baa60c25a"
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
