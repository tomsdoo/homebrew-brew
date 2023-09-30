require "language/node"

class OpenapiView < Formula
  desc "a local server that provides the we page with an open api yaml file"
  homepage "https://github.com/tomsdoo/openapi-view"
  url "https://github.com/tomsdoo/openapi-view/archive/refs/tags/v0.1.0.zip"
  version "0.1.0"
  sha256 "a7a3be9c51d425dfa16f5c3d384393f3545a24e2218b4e8a89e50f3b6c238805"
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
