class Approov < Formula
  desc "Approov CLI tool"
  tag  = "3.1.0"
  homepage "https://github.com/approov/cli"
  url "https://github.com/approov/homebrew-cli/releases/download/" + tag + "/approov-" + tag + ".tar.gz"
  sha256  "3069f73759ba15eb8069d7f1e511bc6ba1d45f901f7c0950bc8ded282f6fa5c6"

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
