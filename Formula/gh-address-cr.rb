class GhAddressCr < Formula
  desc "Deterministic PR review-resolution control plane runtime"
  homepage "https://github.com/RbBtSn0w/gh-address-cr"
  url "https://files.pythonhosted.org/packages/84/f8/ae44aa842b55c7bb22ff511699d12e727780820885dc0b9bbf6606f57a30/gh_address_cr-3.20.0.tar.gz"
  sha256 "be6b8fe44ee22ed890a2be0b45b675a4681607a0d836392ea940a63ab96125d0"
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
