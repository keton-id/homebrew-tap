class Cora < Formula
  desc "Zero-knowledge secret injection runtime for AI agents"
  homepage "https://github.com/keton-id/cora"
  version "0.6.1"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/keton-id/cora/releases/download/v0.6.1/cr-0.6.1-aarch64-macos.tar.gz"
      sha256 "1fa37ec118640d49e44499301a0b0187042a8371d5d6cdea69fe22cf4841dbb2"
    end
    on_intel do
      url "https://github.com/keton-id/cora/releases/download/v0.6.1/cr-0.6.1-x86_64-macos.tar.gz"
      sha256 "4e86f85f35346314747e1e478b24b591f22fea1b5bc3c19a8f47d12c0d352bb2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/keton-id/cora/releases/download/v0.6.1/cr-0.6.1-aarch64-linux.tar.gz"
      sha256 "00d8d8c4eed3a339c32509abab79b47497604b55c25941d1ca2e863a644afaa3"
    end
    on_intel do
      url "https://github.com/keton-id/cora/releases/download/v0.6.1/cr-0.6.1-x86_64-linux.tar.gz"
      sha256 "f6f2b8a98660bd18db004f0eb0af842a4f3c4e95f060a4cd068af23435ec34de"
    end
  end

  def install
    bin.install "cr"
  end

  test do
    system "#{bin}/cr", "version"
  end
end
