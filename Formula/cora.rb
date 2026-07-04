class Cora < Formula
  desc "Zero-knowledge secret injection runtime for AI agents"
  homepage "https://github.com/keton-id/cora"
  version "0.10.1"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/keton-id/cora/releases/download/v0.10.1/cr-0.10.1-aarch64-macos.tar.gz"
      sha256 "a6b099158b5318087a1c39c6199e56f9e0b378c6ee053bc604ecc6d0d068c8fd"
    end
    on_intel do
      url "https://github.com/keton-id/cora/releases/download/v0.10.1/cr-0.10.1-x86_64-macos.tar.gz"
      sha256 "7d5f70d4633a8861525a3c66ded2359927da9fb292bb271351c85039a331ce0d"
    end
  end

  def install
    bin.install "cr"
  end

  test do
    system "#{bin}/cr", "version"
  end
end
