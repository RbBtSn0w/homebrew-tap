class GhAddressCr < Formula
  desc "Deterministic PR review-resolution control plane runtime"
  homepage "https://github.com/RbBtSn0w/gh-address-cr"
  url "https://files.pythonhosted.org/packages/3d/7c/564a92fdba57e3823e8e8e4a2cf1c15137cae3768c622856b2b6c07d9fbe/gh_address_cr-3.21.1.tar.gz"
  sha256 "60cc204ee328acc2a77df10abaeae68a34bef5f5c7c4bdc01e636d5528462269"
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
