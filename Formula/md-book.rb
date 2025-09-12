require "language/node"

class MdBook < Formula
  desc "It helps you to aggregate the markdown resources in one page."
  homepage "https://github.com/tomsdoo/md-book"
  url "https://registry.npmjs.org/@tomsd/md-book/-/md-book-2.0.4.tgz"
  version "2.0.4"
  sha256 "a6cb7e636858329b67f9e5e6c3fe121c309d1b112aaf7ff41112c71813baff48"
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
