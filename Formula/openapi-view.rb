require "language/node"

class OpenapiView < Formula
  desc "a local server that provides the we page with an open api yaml file"
  homepage "https://github.com/tomsdoo/openapi-view"
  url "https://github.com/tomsdoo/openapi-view/archive/refs/tags/v0.1.1.zip"
  version "0.1.1"
  sha256 "d0bf801b5bea57a7b666c8ce630570d5a2c47f9e3397bc273c20f24fcc4abc17"
  license "MIT"
  head "https://github.com/tomsdoo/openapi-view.git", branch: "main"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "npm", "test"
  end
end
