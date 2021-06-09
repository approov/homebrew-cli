class Approov < Formula
  desc "Approov CLI tool"
  tag  "2.7.0"
  homepage "https://github.com/approov/cli"
  url "https://github.com/approov/homebrew-cli/releases/download/" + tag + "/approov-" + tag + ".tar.gz"
  sha256 : "b0e76b6a5a96fdf9aa8e90a9d8832c8cd35703190ca82ae3c55b1135b8fbf6a6"

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
