require "language/node"

class Adg < Formula
  desc "Agent Directory Group toolkit for plugins and skills"
  homepage "https://github.com/RbBtSn0w/adg"
  url "https://registry.npmjs.org/@rbbtsn0w/adg/-/adg-0.9.0.tgz"
  sha256 "867be8f0a2ac6759e8927121284a4db2680804a31d346476f6ea204649088e43"
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
