class Phantom < Formula
  desc "Prevent AI coding agents from leaking your API keys"
  homepage "https://github.com/ashlrai/phantom-secrets"
  url "https://github.com/ashlrai/phantom-secrets.git", tag: "v0.2.0"
  license "MIT"
  head "https://github.com/ashlrai/phantom-secrets.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/phantom-cli")
    system "cargo", "install", *std_cargo_args(path: "crates/phantom-mcp")
  end

  test do
    assert_match "phantom", shell_output("#{bin}/phantom --version")
    assert_match "phantom-mcp", shell_output("#{bin}/phantom-mcp --help 2>&1", 1)
  end
end
