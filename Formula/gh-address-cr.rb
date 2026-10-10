class GhAddressCr < Formula
  desc "Deterministic PR review-resolution control plane runtime"
  homepage "https://github.com/RbBtSn0w/gh-address-cr"
  url "https://files.pythonhosted.org/packages/7c/f9/d0826d9b6cb6195a90310ddf6a2590a47aae71e8d1274cdbb13a86101477/gh_address_cr-3.20.1.tar.gz"
  sha256 "8dee7e41b4f823b197751af76bc69ea58c34c195b723fbf56e49b33859ec1034"
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
