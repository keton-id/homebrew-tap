class Probelm < Formula
  desc "Probe and benchmark models through an OpenAI-compatible gateway"
  homepage "https://github.com/keton-id/probelm"
  version "1.1.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/keton-id/probelm/releases/download/v1.1.0/probelm-macos-aarch64.tar.gz"
    sha256 "3ac9c8039f68fb5e17ecdecedfae77022360c7b829c51c07cd944b11639a20ae"
  elsif OS.mac?
    url "https://github.com/keton-id/probelm/releases/download/v1.1.0/probelm-macos-x86_64.tar.gz"
    sha256 "e1381ca81add1cbc482e47b676e57c31dc61f7db6ce56e4796742bc4b40a60bf"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/keton-id/probelm/releases/download/v1.1.0/probelm-linux-aarch64.tar.gz"
    sha256 "98c53824d8bbb2ba685efd29a75f38f7749f7b6a02a3ec6d6ff0026f965d8830"
  elsif OS.linux?
    url "https://github.com/keton-id/probelm/releases/download/v1.1.0/probelm-linux-x86_64.tar.gz"
    sha256 "59ce495877c0bc077ee60b3da023be78e804eb81de843a13cec677b832c050bb"
  end

  def install
    bin.install "probelm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/probelm --version")
  end
end
