require "language/node"

class Adg < Formula
  desc "Agent Directory Group toolkit for plugins and skills"
  homepage "https://github.com/RbBtSn0w/adg"
  url "https://registry.npmjs.org/@rbbtsn0w/adg/-/adg-1.0.2.tgz"
  sha256 "2fa098c27714f4f6d0b7eb64c40a08d86ea3a60ec9e3be5c80409d64d5647767"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "Agent Directory Group toolkit", shell_output("#{bin}/adg")
  end
end
