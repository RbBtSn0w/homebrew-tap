class GhAddressCr < Formula
  desc "Deterministic PR review-resolution control plane runtime"
  homepage "https://github.com/RbBtSn0w/gh-address-cr"
  url "https://files.pythonhosted.org/packages/62/cf/4169aa64497137ba16e422e842580adfc6b6e2b9066fd942db5cd13b6bbb/gh_address_cr-3.21.0.tar.gz"
  sha256 "848c5e6742ba67db9a71c5b9df95503db156af666d68975a74fa564897a422ed"
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
