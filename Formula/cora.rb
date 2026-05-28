class Cora < Formula
  desc "Zero-knowledge secret injection runtime for AI agents"
  homepage "https://github.com/keton-id/cora"
  version "0.5.1"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/keton-id/cora/releases/download/v0.5.1/cr-0.5.1-aarch64-macos.tar.gz"
      sha256 "ec18481eaad5dc0b0483e1faec8c7a0a2a2e6b101bc9a09de1d70ea6848ddf49"
    end
    on_intel do
      url "https://github.com/keton-id/cora/releases/download/v0.5.1/cr-0.5.1-x86_64-macos.tar.gz"
      sha256 "70945b1da5212ce5e860b2b05cd5b79bf81b0e267a7316bacf0a148567dfd119"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/keton-id/cora/releases/download/v0.5.1/cr-0.5.1-aarch64-linux.tar.gz"
      sha256 "c37de5be159c5f70bc841cda438c7f00ce2253b8b81b94dfbf6c4c44e94e8685"
    end
    on_intel do
      url "https://github.com/keton-id/cora/releases/download/v0.5.1/cr-0.5.1-x86_64-linux.tar.gz"
      sha256 "4f52bdff405245d1d507792875c2e0a118ad6a7703924505cb2775f5127d2840"
    end
  end

  def install
    bin.install "cr"
  end

  test do
    system "#{bin}/cr", "version"
  end
end
