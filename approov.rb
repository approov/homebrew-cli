class Approov < Formula
  desc "Approov CLI tool"
  tag  = "3.2.0"
  homepage "https://github.com/approov/cli"
  url "https://github.com/approov/homebrew-cli/releases/download/" + tag + "/approov-" + tag + ".tar.gz"
  sha256  "0205537cd35775abe75c76faa34ab2d1ee9e6f93e12c89d91ba8867ae19bab9e"

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
