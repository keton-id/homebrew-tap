class Probelm < Formula
  desc "Probe and benchmark models through an OpenAI-compatible gateway"
  homepage "https://github.com/keton-id/probelm"
  version "1.0.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/keton-id/probelm/releases/download/v1.0.0/probelm-macos-aarch64.tar.gz"
    sha256 "ebfe2c00f68301868340983223f02e7b1ad0601e24e6b2195a35ebf4d58ae8a4"
  elsif OS.mac?
    url "https://github.com/keton-id/probelm/releases/download/v1.0.0/probelm-macos-x86_64.tar.gz"
    sha256 "0df3a9996906980516220539a6b1059053aef1a4de3a588b76315281364536ae"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/keton-id/probelm/releases/download/v1.0.0/probelm-linux-aarch64.tar.gz"
    sha256 "b8038805e0b132ca3ae822a045c80b13bad0780300679db5354af5dce480326e"
  elsif OS.linux?
    url "https://github.com/keton-id/probelm/releases/download/v1.0.0/probelm-linux-x86_64.tar.gz"
    sha256 "81ad10ddd305fd15fb84663efb8677300fc2f1d202d2a7ce8f4a95f7678dde9b"
  end

  def install
    bin.install "probelm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/probelm --version")
  end
end
