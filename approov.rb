class Approov < Formula
  desc "Approov CLI tool"
  tag  "2.7.0"
  homepage "https://github.com/approov/cli"
  url "https://github.com/approov/homebrew-cli/releases/download/" + tag + "/approov-" + tag + ".tar.gz"
  sha256  "390f3ce31a517d33df9413ababfe4757239e8437f4d3fcb5db3d0ef2201b8fba"

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
