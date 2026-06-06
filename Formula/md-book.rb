require "language/node"

class MdBook < Formula
  desc "It helps you to aggregate the markdown resources in one page."
  homepage "https://github.com/tomsdoo/md-book"
  url "https://registry.npmjs.org/@tomsd/md-book/-/md-book-2.1.0.tgz"
  version "2.1.0"
  sha256 "2f9aa719ab1283fec6d384777d85c5eeb937991499852b34c5efb154f21fdd6c"
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
