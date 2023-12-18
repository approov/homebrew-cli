class Approov < Formula
  desc "Approov CLI tool"
  tag  = "3.2.0"
  homepage "https://github.com/approov/cli"
  url "https://github.com/approov/homebrew-cli/releases/download/" + tag + "/approov-" + tag + ".tar.gz"
  sha256  "88cd6f95b19e577f8f0badc79effc1300865838d7f79aa638c97128f77d2f974"

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
