class Phantom < Formula
  desc "Prevent AI coding agents from leaking your API keys"
  homepage "https://phm.dev"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ashlrai/phantom-secrets/releases/download/v0.4.0/phantom-aarch64-apple-darwin.tar.gz"
      sha256 "b35797fe407a4359a9a19726e7268e81f250e5afab68d47f0b9bd10073587ba4"
    else
      url "https://github.com/ashlrai/phantom-secrets/releases/download/v0.4.0/phantom-x86_64-apple-darwin.tar.gz"
      sha256 "060e1cd6ef6cc1915600b6d472672a91f821ecf0bc00008f5e7c8b5ed036b7a7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ashlrai/phantom-secrets/releases/download/v0.4.0/phantom-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a97808ea4b21fc0cdb41e8f126825e507db4b3e20b051130de02d9171c36533d"
    else
      url "https://github.com/ashlrai/phantom-secrets/releases/download/v0.4.0/phantom-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6029aaa76379c2b15a5b06519c562860f2465f9db5c79a65726934053b0c046a"
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
