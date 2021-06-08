class Approov < Formula
  desc "Approov CLI tool"
  tag  "2.7.1"
  homepage "https://github.com/approov/cli"
  url "https://github.com/approov/homebrew-cli/releases/download/" + tag + "/approov-" + tag + ".tar.gz"
  sha256 : "3899e5cf2a71777770e5e40eb8b1f458928010ed2c08fce5876e82ce83193f15"

  bottle :unneeded

  def install
    on_linux do
      bin.install "Linux/approov"
    end
    on_macos do
      bin.install "MacOS/approov"
    end
  end

  test do
    system "#{bin}/approov", "--version"
  end
end
