class Approov < Formula
  desc "Approov CLI tool"
  tag  = "3.2.0"
  homepage "https://github.com/approov/cli"
  url "https://github.com/approov/homebrew-cli/releases/download/" + tag + "/approov-" + tag + ".tar.gz"
  sha256  "82aab47f83ac598e29f14346871ae30a502ea422ffaaa85233a35640740b7098"

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
