require "language/node"

class UseGist < Formula
  desc "gist tool"
  homepage "https://github.com/tomsdoo/use-gist"
  url "https://registry.npmjs.org/@tomsd/use-gist/-/use-gist-0.3.1.tgz"
  version "0.3.1"
  sha256 "9585bd1f9ac725203e24bbc08b6ee8b4a73a43ee26527af40893f8e8ef36a6d6"
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
