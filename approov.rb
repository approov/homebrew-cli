class Approov < Formula
  desc "Approov CLI tool"
  tag  "2.7.3"
  homepage "https://github.com/approov/cli"
  url "https://github.com/approov/homebrew-cli/releases/download/" + tag + "/approov-" + tag + ".tar.gz"
  sha256 : "f2770fdff484a4583f265802cb6486cf75b65d0a365424e9b3f850c8f320fae8"

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
