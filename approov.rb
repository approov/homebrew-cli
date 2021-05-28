class Approov < Formula
  desc "Approov CLI tool"
  homepage "https://github.com/approov/cli"
  url "https://approov.io"
  sha256 "56d6cf21196cfc38632708143956dcf8d6293c7a3b3dc101836bb758df42d285"

  bottle :unneeded

  def install
    bin.install "approov"
  end

  test do
    system "#{bin}/approov", "--version"
  end
end
