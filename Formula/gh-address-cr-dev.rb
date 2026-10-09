class GhAddressCrDev < Formula
  desc "Deterministic PR review-resolution control plane runtime"
  homepage "https://github.com/RbBtSn0w/gh-address-cr"
  url "https://github.com/RbBtSn0w/gh-address-cr/releases/download/pr-preview/gh-address-cr-pr339.tar.gz"
  sha256 "7ce3937cd8d57107d7d812dcb8febd753c69be0beb353253ead567f2a97354c5"
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
