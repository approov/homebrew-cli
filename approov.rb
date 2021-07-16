class Approov < Formula
  desc "Approov CLI tool"
  tag  = "2.7.1"
  homepage "https://github.com/approov/cli"
  url "https://github.com/approov/homebrew-cli/releases/download/" + tag + "/approov-" + tag + ".tar.gz"
  sha256  "55a3c88f175602fcfb76ebeaae8d5884ce2b28b017ad61ba271dfdbb7845af17"

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
