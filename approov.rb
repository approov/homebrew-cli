class Approov < Formula
  desc "Approov CLI tool"
  tag  = "3.1.0"
  homepage "https://github.com/approov/cli"
  url "https://github.com/approov/homebrew-cli/releases/download/" + tag + "/approov-" + tag + ".tar.gz"
  sha256  "02f20d10aed956460b7cd16f4a29b558318ada3375470b8c110e001153749db2"

  #bottle :unneeded

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
