class Approov < Formula
  desc "Approov CLI tool"
  tag  = "3.5.0"
  homepage "https://github.com/approov/homebrew-cli"
  url "https://github.com/approov/homebrew-cli/releases/download/" + tag + "/approov-" + tag + ".tar.gz"
  sha256  "e446af35918dab6f621a26e4fa3975b93d2eb3bf39b4f6833d5b43cd7879af39"

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
