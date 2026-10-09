class GhAddressCrDev < Formula
  desc "Deterministic PR review-resolution control plane runtime"
  homepage "https://github.com/RbBtSn0w/gh-address-cr"
  url "https://github.com/RbBtSn0w/gh-address-cr/releases/download/pr-preview/gh-address-cr-pr343.tar.gz"
  sha256 "87fa023b74a953a5c8c44cb491050f39661b9428c75ca2c46a42a27a969404e1"
  license "MIT"

  depends_on "python@3.14"
  conflicts_with "gh-address-cr", because: "both install gh-address-cr binary"
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
