class Phantom < Formula
  desc "Prevent AI coding agents from leaking your API keys"
  homepage "https://phm.dev"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ashlrai/phantom-secrets/releases/download/v0.4.0/phantom-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/ashlrai/phantom-secrets/releases/download/v0.4.0/phantom-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ashlrai/phantom-secrets/releases/download/v0.4.0/phantom-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/ashlrai/phantom-secrets/releases/download/v0.4.0/phantom-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "phantom"
    bin.install "phantom-mcp" if File.exist?("phantom-mcp")
  end

  test do
    assert_match "phantom", shell_output("#{bin}/phantom --version")
  end
end
