require "language/node"

class UseKeychain < Formula
  desc "keychain utility."
  homepage "https://github.com/tomsdoo/use-keychain"
  url "https://registry.npmjs.org/use-keychain/-/use-keychain-0.1.0.tgz"
  version "0.1.0"
  sha256 "5ffa12e1db1bfd64bbd738e40cb8b89a63afe9649c4887f097f834bac4e42fd4"
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
