class Cora < Formula
  desc "Zero-knowledge secret injection runtime for AI agents"
  homepage "https://github.com/keton-id/cora"
  version "0.7.0"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/keton-id/cora/releases/download/v0.7.0/cr-0.7.0-aarch64-macos.tar.gz"
      sha256 "34f17eb9247ae2c6ef4e44f8fdba28ae8b833ac4db0f0fec1a7bada0a10eeb92"
    end
    on_intel do
      url "https://github.com/keton-id/cora/releases/download/v0.7.0/cr-0.7.0-x86_64-macos.tar.gz"
      sha256 "f85fda7369146b333fc275a5cd588fb599f3a9990e214fcd2c9dbc159460b888"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/keton-id/cora/releases/download/v0.7.0/cr-0.7.0-aarch64-linux.tar.gz"
      sha256 "1f1029784732d0ca5c0b23e3f233b0a1f90c4b3fc6b7118032637d1341b46159"
    end
    on_intel do
      url "https://github.com/keton-id/cora/releases/download/v0.7.0/cr-0.7.0-x86_64-linux.tar.gz"
      sha256 "d7a01b0a153f6c3b6a200683e9964b0c4ebbe211c7bf6a90b8d210a42661765a"
    end
  end

  def install
    bin.install "cr"
  end

  test do
    system "#{bin}/cr", "version"
  end
end
