class Approov < Formula
  desc "Approov CLI tool"
  tag  = "3.0.1"
  homepage "https://github.com/approov/cli"
  url "https://github.com/approov/homebrew-cli/releases/download/" + tag + "/approov-" + tag + ".tar.gz"
  sha256  "b0b5c005a2c76ee146758151d24107a33612671cdbd6d8e6d2d53972176dff9f"

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
