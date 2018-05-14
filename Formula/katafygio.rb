class Katafygio < Formula
  desc "Dump, or continuously backup Kubernetes objets as yaml files in git"
  homepage "https://github.com/bpineau/katafygio"
  url "https://github.com/bpineau/katafygio/releases/download/v0.6.0/katafygio_0.6.0_darwin_amd64"
  version "0.6.0"
  sha256 "d135a83212852d7b560d49117af4fceace72756c34d060a4fbfb6a08994adc18"
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
