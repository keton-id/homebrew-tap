class Cora < Formula
  desc "Zero-knowledge secret injection runtime for AI agents"
  homepage "https://github.com/keton-id/cora"
  version "0.12.1"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/keton-id/cora/releases/download/v0.12.1/cr-0.12.1-aarch64-macos.tar.gz"
      sha256 "ebcb9eff646fd945350415ecedb402c6e7fab8651f0161c2a38543b0dca50d56"
    end
    on_intel do
      url "https://github.com/keton-id/cora/releases/download/v0.12.1/cr-0.12.1-x86_64-macos.tar.gz"
      sha256 "989dfdee2abc9e189846e3bc0b4cd9e863e72c0be0c3871dab489f41853e00be"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/keton-id/cora/releases/download/v0.12.1/cr-0.12.1-aarch64-linux.tar.gz"
      sha256 "f873dcfacc90f0640a72bf57658d59ddce7b753fa440ef615b969418cfa704c5"
    end
    on_intel do
      url "https://github.com/keton-id/cora/releases/download/v0.12.1/cr-0.12.1-x86_64-linux.tar.gz"
      sha256 "67684ae778b0f359372b208feea29aeebe7db1b9f0ea3367eae946dd0062c014"
    end
  end

  def install
    bin.install "cr"
  end

  test do
    system "#{bin}/cr", "version"
  end
end
