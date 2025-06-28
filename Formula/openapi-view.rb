require "language/node"

class OpenapiView < Formula
  desc "a local server that provides the we page with an open api yaml file"
  homepage "https://github.com/tomsdoo/openapi-view"
  url "https://github.com/tomsdoo/openapi-view/archive/refs/tags/v1.0.0.zip"
  version "1.0.0"
  sha256 "cc183b4402fef9ee3bd4283208787d61796601e274200d2cfff772d3e39f17c8"
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
