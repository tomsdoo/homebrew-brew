require "language/node"

class UseKeychain < Formula
  desc "keychain utility."
  homepage "https://github.com/tomsdoo/use-keychain"
  url "https://registry.npmjs.org/use-keychain/-/use-keychain-0.2.0.tgz"
  version "0.2.0"
  sha256 "bbe6d73a57efe75bb7521dd728ee516cdd5469e74b293b571abd7e55e6175b26"
  license "MIT"
  head "https://github.com/tomsdoo/use-keychain.git", branch: "main"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "npm", "test"
  end
end
