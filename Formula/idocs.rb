class Idocs < Formula
  desc "Swift-native Apple documentation CLI"
  homepage "https://github.com/RbBtSn0w/Apple-iDocs"
  url "https://github.com/RbBtSn0w/Apple-iDocs/releases/download/v1.7.3/idocs-darwin-arm64.tar.gz"
  version "1.7.3"
  sha256 "5562c9d881c3b20e2a64e61535f56cf78b086a811704da41f6b1ffb1a25eb14b"
  license "MIT"

  depends_on macos: :ventura
  depends_on arch: :arm64

  def install
    bundle = buildpath/"idocs-darwin-arm64"
    if bundle.directory?
      libexec.install bundle.children
    else
      libexec.install Dir["*"]
    end
    bin.write_exec_script libexec/"idocs"
  end

  test do
    system "#{bin}/idocs", "--version"
  end
end
