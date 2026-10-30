class GhAddressCr < Formula
  desc "Deterministic PR review-resolution control plane runtime"
  homepage "https://github.com/RbBtSn0w/gh-address-cr"
  url "https://files.pythonhosted.org/packages/6d/60/157c9b57584bada2bdd5064f837ca093318ffe4a6e7084e611b25a4e9710/gh_address_cr-3.21.2.tar.gz"
  sha256 "ceee2736507290c7bebe204bf62e6db258ac64dca86489bf9c026667fb05c86f"
  license "MIT"

  depends_on "python@3.14"
  depends_on "uv"

  def install
    python = formula_opt_bin("python@3.14")/"python3.14"
    system "uv", "venv", "--python", python, libexec
    system "uv", "pip", "install", "--python", libexec/"bin/python", "."
    bin.install_symlink libexec/"bin/gh-address-cr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gh-address-cr --version")
    assert_match "\"runtime_version\"", shell_output("#{bin}/gh-address-cr agent manifest")
  end
end
