class Approov < Formula
  desc "Approov CLI tool"
  tag  = "2.9.0"
  homepage "https://github.com/approov/cli"
  url "https://github.com/approov/homebrew-cli/releases/download/" + tag + "/approov-" + tag + ".tar.gz"
  sha256  "b49659415b0af787eda850049be72634b98997e80c4a81f56067ded3eeb0c067"

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
