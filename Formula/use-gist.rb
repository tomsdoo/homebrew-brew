require "language/node"

class UseGist < Formula
  desc "gist tool"
  homepage "https://github.com/tomsdoo/use-gist"
  url "https://registry.npmjs.org/@tomsd/use-gist/-/use-gist-0.3.0.tgz"
  version "0.3.0"
  sha256 "d1beb25f5bb6e14e9029e607b10e52929635eaef74016af67f02b9bcf4076fbd"
  license "MIT"
  head "https://github.com/tomsdoo/use-gist.git", branch: "main"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "npm", "test"
  end
end
