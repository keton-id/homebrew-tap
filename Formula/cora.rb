class Cora < Formula
  desc "Zero-knowledge secret injection runtime for AI agents"
  homepage "https://github.com/keton-id/cora"
  version "0.9.0"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/keton-id/cora/releases/download/v0.9.0/cr-0.9.0-aarch64-macos.tar.gz"
      sha256 "846221674e2e9b948ff48c69d84d27577e48c452f06cb9e69cbed64282866a58"
    end
    on_intel do
      url "https://github.com/keton-id/cora/releases/download/v0.9.0/cr-0.9.0-x86_64-macos.tar.gz"
      sha256 "bb5bc4c7b6c1ec5b312bef779f3f984a8f84d7e6b0a7e8a9a143458bcf95f8ca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/keton-id/cora/releases/download/v0.9.0/cr-0.9.0-aarch64-linux.tar.gz"
      sha256 "d918864d0b02d50b0fc1f608f3fed7b8977c11625ebe4dce93c537de077175d3"
    end
    on_intel do
      url "https://github.com/keton-id/cora/releases/download/v0.9.0/cr-0.9.0-x86_64-linux.tar.gz"
      sha256 "fcc828a74c4ba67369d5a5a4c3ba0026a3db6cc80e8a66b6341c2e778d5ff7a2"
    end
  end

  def install
    bin.install "cr"
  end

  test do
    system "#{bin}/cr", "version"
  end
end
