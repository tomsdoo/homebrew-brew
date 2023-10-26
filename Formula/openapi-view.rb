require "language/node"

class OpenapiView < Formula
  desc "a local server that provides the we page with an open api yaml file"
  homepage "https://github.com/tomsdoo/openapi-view"
  url "https://github.com/tomsdoo/openapi-view/archive/refs/tags/v0.2.0.zip"
  version "0.2.0"
  sha256 "05aacf0afdfb36356166c054cc23c0d4deed4a7d87f633ab3c5b5b06ba85bffa"
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
