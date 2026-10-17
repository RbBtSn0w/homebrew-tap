require "language/node"

class Adg < Formula
  desc "Agent Directory Group toolkit for plugins and skills"
  homepage "https://github.com/RbBtSn0w/adg"
  url "https://registry.npmjs.org/@rbbtsn0w/adg/-/adg-0.10.1.tgz"
  sha256 "ee4f3e8e2a551225e8b118dd6e8aeabbb465ae14ec71d61b61760f46097fe816"
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
