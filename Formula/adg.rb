require "language/node"

class Adg < Formula
  desc "Agent Directory Group toolkit for plugins and skills"
  homepage "https://github.com/RbBtSn0w/adg"
  url "https://registry.npmjs.org/@rbbtsn0w/adg/-/adg-0.2.1.tgz"
  sha256 "a43cc439f7f18e4bbe4e6c1ba8d587b627366415812f1f33d4b7f2374803cf9b"
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
