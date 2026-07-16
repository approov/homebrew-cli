class Approov < Formula
  desc "Approov CLI tool"
  tag  = "3.6.0"
  homepage "https://github.com/approov/homebrew-cli"
  url "https://github.com/approov/homebrew-cli/releases/download/" + tag + "/approov-" + tag + ".tar.gz"
  sha256  "bba03cfa75ed7c38f7554bf1676ab1ac654686245a77037c73054bfd4f55c04d"

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
