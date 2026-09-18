class Probelm < Formula
  desc "Probe and benchmark models through an OpenAI-compatible gateway"
  homepage "https://github.com/keton-id/probelm"
  version "1.0.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/keton-id/probelm/releases/download/v1.0.0/probelm-macos-aarch64.tar.gz"
    sha256 "395b70173c756bfe54f9c8a63188e1c1bbe454e1bb9ca2f7b43fc60cbbb58829"
  elsif OS.mac?
    url "https://github.com/keton-id/probelm/releases/download/v1.0.0/probelm-macos-x86_64.tar.gz"
    sha256 "e5252af8ae05aff33583a66190440f08b7d8643456d52ee31b2d93eb80939aea"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/keton-id/probelm/releases/download/v1.0.0/probelm-linux-aarch64.tar.gz"
    sha256 "42c7055ed3f67cf547accd1dc8b85ddd7f6379bda20c41dcbf211bd62c290f36"
  elsif OS.linux?
    url "https://github.com/keton-id/probelm/releases/download/v1.0.0/probelm-linux-x86_64.tar.gz"
    sha256 "a2f63c7afd5478b63ad8b71047570b7f0e1682e5e11af06575dee3459fa67473"
  end

  def install
    bin.install "probelm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/probelm --version")
  end
end
