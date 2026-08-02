# Homebrew formula for the Approov CLI.
#
# Binaries come from the approov/approov-cli release repository; this tap holds only the
# formula. Update by bumping `version` and replacing both sha256 values with the matching
# lines from that release's SHA256SUMS:
#
#     curl -fL https://github.com/approov/approov-cli/releases/download/v<ver>/SHA256SUMS
#
# The release pipeline opens that PR automatically for each new version.

class Approov < Formula
  desc "Administration and integration tooling for the Approov mobile app attestation service"
  homepage "https://approov.io"
  version "3.6.1"
  # Commercial licence — no SPDX identifier applies.
  license :cannot_represent

  on_macos do
    # Universal build: one binary serves both arm64 and x86_64.
    url "https://github.com/approov/approov-cli/releases/download/v#{version}/approov-#{version}-darwin-universal.tar.gz"
    sha256 "5ffbac49fdc774a105d3e3a1127f3152d249a99741d8c6d3a5a8b8b4a37c0b52"
  end

  on_linux do
    on_intel do
      url "https://github.com/approov/approov-cli/releases/download/v#{version}/approov-#{version}-linux-amd64.tar.gz"
      sha256 "cf537a221784bc7616a3d9f845f7979178b552f00ceb22c1f37326fd94947092"
    end
    # No arm64 Linux build is published yet; add an on_arm block here when one ships.
  end

  def install
    bin.install "approov"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/approov --version")
  end
end
