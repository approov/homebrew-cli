class Approov < Formula
  desc "Approov CLI tool"
  tag  "2.7.2"
  homepage "https://github.com/approov/cli"
  url "https://github.com/approov/homebrew-cli/releases/download/" + tag + "/approov-" + tag + ".tar.gz"
  sha256 : "aced3024cbb839c35df000283ab9416bca1499f19b5730d2d95a7c7590fba8a8"

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
