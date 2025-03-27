class Approov < Formula
  desc "Approov CLI tool"
  tag  = "3.4.0"
  homepage "https://github.com/approov/homebrew-cli"
  url "https://github.com/approov/homebrew-cli/releases/download/" + tag + "/approov-" + tag + ".tar.gz"
  sha256  "881a82a918e3d583f411c18ec7d12f872cad64a2b35b42836d029c840b786478"

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
