require "language/node"

class MdBook < Formula
  desc "It helps you to aggregate the markdown resources in one page."
  homepage "https://github.com/tomsdoo/md-book"
  url "https://registry.npmjs.org/@tomsd/md-book/-/md-book-1.3.5.tgz"
  version "1.3.5"
  sha256 "ebee2dfb92e7377667f50559272a6c2ce3fd7c1061edf966c353b28f86f4f963"
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
