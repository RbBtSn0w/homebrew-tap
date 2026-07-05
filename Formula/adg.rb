require "language/node"

class Adg < Formula
  desc "Agent Directory Group toolkit for plugins and skills"
  homepage "https://github.com/RbBtSn0w/adg"
  url "https://registry.npmjs.org/@rbbtsn0w/adg/-/adg-0.6.0.tgz"
  sha256 "9c870a9663f063e8b1e78e3141c975fb18d023f38a3f5561a2af47f934721195"
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
