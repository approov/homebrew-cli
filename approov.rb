class Approov < Formula
  desc "Approov CLI tool"
  tag  "2.7.4"
  homepage "https://github.com/approov/cli"
  url "https://github.com/approov/homebrew-cli/releases/download/" + tag + "/approov-" + tag + ".tar.gz"
  sha256 : "b1543e57a494d94afe231813322c5f54c2287fce35fb647f0c00fa3fd1ad26c1"

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
