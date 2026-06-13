class Cora < Formula
  desc "Zero-knowledge secret injection runtime for AI agents"
  homepage "https://github.com/keton-id/cora"
  version "0.10.0"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/keton-id/cora/releases/download/v0.10.0/cr-0.10.0-aarch64-macos.tar.gz"
      sha256 "7aeaa9ae489683205bb099c515b711db521831559722b0c9b80643f0bd235ccd"
    end
    on_intel do
      url "https://github.com/keton-id/cora/releases/download/v0.10.0/cr-0.10.0-x86_64-macos.tar.gz"
      sha256 "ed8319ce21560c70fa96438743bdc3136bc6362775087b7b762973ca642d21e3"
    end
  end

  def install
    bin.install "cr"
  end

  test do
    system "#{bin}/cr", "version"
  end
end
