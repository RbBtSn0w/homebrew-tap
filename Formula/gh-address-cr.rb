class GhAddressCr < Formula
  include Language::Python::Virtualenv

  desc "Deterministic PR review-resolution control plane runtime"
  homepage "https://github.com/RbBtSn0w/gh-address-cr"
  url "https://files.pythonhosted.org/packages/c4/95/a1d5c0c56bed2dd62a8bea818d9561a3182d2b30ae0a52cfead207665fa4/gh_address_cr-2.4.4.tar.gz"
  sha256 "94b31a547ec149a40118d1ed0244bb894f85828cfd67d1ae89c865cfcc5c3011"
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
