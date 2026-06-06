class Cora < Formula
  desc "Zero-knowledge secret injection runtime for AI agents"
  homepage "https://github.com/keton-id/cora"
  version "0.9.5"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/keton-id/cora/releases/download/v0.9.5/cr-0.9.5-aarch64-macos.tar.gz"
      sha256 "2c9ba734fa5f2c717b15d9b3cadeb9196a3641106b7bdad16333f8dee098625a"
    end
    on_intel do
      url "https://github.com/keton-id/cora/releases/download/v0.9.5/cr-0.9.5-x86_64-macos.tar.gz"
      sha256 "192fc1e9d4924aa6f5b543f48ac526e365c902d90108f664dd07b0f2c649b10c"
    end
  end

  def install
    bin.install "cr"
  end

  test do
    system "#{bin}/cr", "version"
  end
end
