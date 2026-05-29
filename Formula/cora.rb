class Cora < Formula
  desc "Zero-knowledge secret injection runtime for AI agents"
  homepage "https://github.com/keton-id/cora"
  version "0.6.0"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/keton-id/cora/releases/download/v0.6.0/cr-0.6.0-aarch64-macos.tar.gz"
      sha256 "532aa9dc379719fb28798865faa3334883ed9510c1999e990696cfc1d9e32b12"
    end
    on_intel do
      url "https://github.com/keton-id/cora/releases/download/v0.6.0/cr-0.6.0-x86_64-macos.tar.gz"
      sha256 "af0b3b683dd780fc0532425d8c327c17ac5f052d68b3fa15dc9cdf82cbc1aba1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/keton-id/cora/releases/download/v0.6.0/cr-0.6.0-aarch64-linux.tar.gz"
      sha256 "29708beb5d0570b48028cfe710235edc4043345492e6beb33e0e105602f31564"
    end
    on_intel do
      url "https://github.com/keton-id/cora/releases/download/v0.6.0/cr-0.6.0-x86_64-linux.tar.gz"
      sha256 "2ad3cd74e03e13949e61d9e10c705f8f97a84a211545562547c3f38d3d6f0688"
    end
  end

  def install
    bin.install "cr"
  end

  test do
    system "#{bin}/cr", "version"
  end
end
