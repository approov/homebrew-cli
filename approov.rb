class Approov < Formula
  desc "Approov CLI tool"
  tag  = "3.0.0"
  homepage "https://github.com/approov/cli"
  url "https://github.com/approov/homebrew-cli/releases/download/" + tag + "/approov-" + tag + ".tar.gz"
  sha256  "64979951bd45c57e3118b039fd92e3377199ac7db9361c68cb035a1ce11cc893"

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
