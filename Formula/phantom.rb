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
      url "https://github.com/ashlrai/phantom-secrets/releases/download/v0.7.8/phantom-aarch64-apple-darwin.tar.gz"
      sha256 "ee13e62defab60ee39224d627943b288c8b1c1361e0e577f39038fbfdae7f6fc"
    end
    on_intel do
      url "https://github.com/ashlrai/phantom-secrets/releases/download/v0.7.8/phantom-x86_64-apple-darwin.tar.gz"
      sha256 "5aad11ee1a26ff9c83f60df6ced7e81191f636c9d2d80451f664ca95f145e711"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ashlrai/phantom-secrets/releases/download/v0.7.8/phantom-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4383311bfb7f80219af6fcfd164fec88a021b174ed4c2c9267bf15350511349b"
    end
    on_intel do
      url "https://github.com/ashlrai/phantom-secrets/releases/download/v0.7.8/phantom-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9c7ca625fed3b54bd866526074986e7f41c271879d81ce7fe532bb3887787d77"
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
