class Approov < Formula
  desc "Approov CLI tool"
  tag  = "3.4.0"
  homepage "https://github.com/approov/cli"
  url "https://github.com/approov/homebrew-cli/releases/download/" + tag + "/approov-" + tag + ".tar.gz"
  sha256  "a2c0c079053fbacaff75902d193ebbd91ba123ac8028e1aedb38688b43c992d6"

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
