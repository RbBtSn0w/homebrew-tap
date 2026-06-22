class GhAddressCr < Formula
  include Language::Python::Virtualenv

  desc "Deterministic PR review-resolution control plane runtime"
  homepage "https://github.com/RbBtSn0w/gh-address-cr"
  url "https://files.pythonhosted.org/packages/47/9a/f88be29aeac61d9f8a456f121cf658951eff160dc045a21b57dc0123c6d1/gh_address_cr-3.1.4.tar.gz"
  sha256 "94e56c1b3371a244fb03a1fd697518058dfccf5e5667697d99d3200dce6dbcff"
  license "MIT"

  depends_on "python@3.14"

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/d7/f1/e7a6dd94a8d4a5626c03e4e99c87f241ba9e350cd9e6d75123f992427270/packaging-26.2.tar.gz"
    sha256 "ff452ff5a3e828ce110190feff1178bb1f2ea2281fa2075aadb987c2fb221661"
  end

  def install
    virtualenv_install_with_resources using: "python3.14"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gh-address-cr --version")
    assert_match "\"runtime_version\"", shell_output("#{bin}/gh-address-cr agent manifest")
  end
end
