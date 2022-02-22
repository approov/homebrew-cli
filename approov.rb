class Approov < Formula
  desc "Approov CLI tool"
  tag  = ""
  homepage "https://github.com/approov/cli"
  url "https://github.com/approov/homebrew-cli/releases/download/" + tag + "/approov-" + tag + ".tar.gz"
  sha256  "8dd92a3c5b3f0dd328494f3f23c33de580526fde95eecd05ecefe8eda8152777"

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
