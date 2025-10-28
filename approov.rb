class Approov < Formula
  desc "Approov CLI tool"
  tag  = "3.5.0"
  homepage "https://github.com/approov/homebrew-cli"
  url "https://github.com/approov/homebrew-cli/releases/download/" + tag + "/approov-" + tag + ".tar.gz"
  sha256  "f6b491fa15dccc51e48eadee4a4a49b12bdad4352e0097c30379395c472102bd"

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
