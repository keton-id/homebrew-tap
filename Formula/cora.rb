class Cora < Formula
  desc "Zero-knowledge secret injection runtime for AI agents"
  homepage "https://github.com/keton-id/cora"
  version "0.11.0"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/keton-id/cora/releases/download/v0.11.0/cr-0.11.0-aarch64-macos.tar.gz"
      sha256 "d3bb982fbb9dec9bbe9bad1e741c573ef99c6ad06b6e6d8a8373885a7bb9ae3c"
    end
    on_intel do
      url "https://github.com/keton-id/cora/releases/download/v0.11.0/cr-0.11.0-x86_64-macos.tar.gz"
      sha256 "de6eccb99b295aecb1fe6dca0f9836af78a71bff69b34f76419ec1364a54260d"
    end
  end

  def install
    bin.install "cr"
  end

  test do
    system "#{bin}/cr", "version"
  end
end
