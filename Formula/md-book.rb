require "language/node"

class MdBook < Formula
  desc "It helps you to aggregate the markdown resources in one page."
  homepage "https://github.com/tomsdoo/md-book"
  url "https://github.com/tomsdoo/md-book/archive/refs/tags/v1.2.0.zip"
  version "1.2.0"
  sha256 "6965eb9df312a6a728a0bd363ddde6dfb158f6087be1b0b15c18f477fda14044"
  license "MIT"
  head "https://github.com/tomsdoo/md-book.git", branch: "main"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "npm", "test"
  end
end
