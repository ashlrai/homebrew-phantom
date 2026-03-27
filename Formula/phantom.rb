class Phantom < Formula
  desc "Prevent AI coding agents from leaking your API keys"
  homepage "https://github.com/ashlrai/phantom-secrets"
  url "https://github.com/ashlrai/phantom-secrets.git", tag: "v0.1.0"
  license "MIT"
  head "https://github.com/ashlrai/phantom-secrets.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/phantom-cli")
    system "cargo", "install", *std_cargo_args(root: prefix, path: "crates/phantom-mcp")
  end

  test do
    assert_match "phantom", shell_output("#{bin}/phantom --version")
  end
end
