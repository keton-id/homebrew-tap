class Cora < Formula
  desc "Zero-knowledge secret injection runtime for AI agents"
  homepage "https://github.com/keton-id/cora"
  version "0.12.0"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/keton-id/cora/releases/download/v0.12.0/cr-0.12.0-aarch64-macos.tar.gz"
      sha256 "ca88edc85eadfd60a79843823a250b284664cd72a3e7c94267a4357051f3ccaa"
    end
    on_intel do
      url "https://github.com/keton-id/cora/releases/download/v0.12.0/cr-0.12.0-x86_64-macos.tar.gz"
      sha256 "324d084fcfcc76e970530a216ff9b5e705d05e946faf0fbe68705b0f2ad52652"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/keton-id/cora/releases/download/v0.12.0/cr-0.12.0-aarch64-linux.tar.gz"
      sha256 "c9ae208a17d43fd09fa45f1a29f6444dd70420e378e409b60d150c545d2c2ba0"
    end
    on_intel do
      url "https://github.com/keton-id/cora/releases/download/v0.12.0/cr-0.12.0-x86_64-linux.tar.gz"
      sha256 "badaee5f36480372c012bb31799038984d562d6f5780c950bb9c4d3a758fe1a0"
    end
  end

  def install
    bin.install "cr"
  end

  test do
    system "#{bin}/cr", "version"
  end
end
