require "language/node"

class MdBook < Formula
  desc "It helps you to aggregate the markdown resources in one page."
  homepage "https://github.com/tomsdoo/md-book"
  url "https://registry.npmjs.org/@tomsd/md-book/-/md-book-1.3.6.tgz"
  version "1.3.6"
  sha256 "e8d53476eff5bca26963a271209bf976be9e39709dc8aba4aa97b26bb2252bb2"
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
