require "language/node"

class UseGist < Formula
  desc "gist tool"
  homepage "https://github.com/tomsdoo/use-gist"
  url "https://registry.npmjs.org/@tomsd/use-gist/-/use-gist-0.3.2.tgz"
  version "0.3.2"
  sha256 "c909edf2cff576f399ed840cb00f3e75d3923c378182122204963513915ada98"
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
