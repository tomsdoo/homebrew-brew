require "language/node"

class MdBook < Formula
  desc "It helps you to aggregate the markdown resources in one page."
  homepage "https://github.com/tomsdoo/md-book"
  url "https://registry.npmjs.org/@tomsd/md-book/-/md-book-1.2.0.tgz"
  version "1.2.0"
  sha256 "2536f94efad1ce8cb6e806e3079e442b8582048fef34caa0739feacec12ed566"
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
