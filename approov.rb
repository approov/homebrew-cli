class Approov < Formula
  desc "Approov CLI tool"
  tag  = "2.7.0"
  homepage "https://github.com/approov/cli"
  url "https://github.com/approov/homebrew-cli/releases/download/" + tag + "/approov-" + tag + ".tar.gz"
  sha256  "8d322b93803e5d31eb08e794b0ef6ed7a54133535675c937234902e031d2049d"

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
