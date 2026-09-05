# frozen_string_literal: true

# Phantom — Homebrew formula
#
# This formula lives in the ashlrai/homebrew-phantom tap repo.
# It is mirrored here in the main repo so changes can be reviewed
# alongside the code that produces the binaries it downloads.
#
# Updates are reviewed and applied manually after the exact release archives
# and checksums are published. The current release workflow does not open a tap
# pull request automatically.

class Phantom < Formula
  desc "Reduce API-key exposure when working with AI coding agents"
  homepage "https://phm.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ashlrai/phantom-secrets/releases/download/v0.7.7/phantom-aarch64-apple-darwin.tar.gz"
      sha256 "24dbfc995d07fc27380c24dcd26a86418bc907ed29e0242a31144a3b542ddbaf"
    end
    on_intel do
      url "https://github.com/ashlrai/phantom-secrets/releases/download/v0.7.7/phantom-x86_64-apple-darwin.tar.gz"
      sha256 "4df03729e60613e79debbbe6472e448034c882bd956afb63b7d3acb5788b1ad7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ashlrai/phantom-secrets/releases/download/v0.7.7/phantom-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cda0a895f8427a1602cf286daed7071097c2342408f751e4fdcf35437c4be2e3"
    end
    on_intel do
      url "https://github.com/ashlrai/phantom-secrets/releases/download/v0.7.7/phantom-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "399740ddf2226d18ce6458150ae4faae10febb63c386b8439000912b8ea8a64b"
    end
  end

  def install
    bin.install "phantom"
    bin.install "phantom-mcp"
  end

  test do
    assert_match "phantom #{version}", shell_output("#{bin}/phantom --version")
    assert_match "phantom-mcp #{version}", shell_output("#{bin}/phantom-mcp --version")
  end
end
