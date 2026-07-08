class Idocs < Formula
  desc "Swift-native Apple documentation CLI"
  homepage "https://github.com/RbBtSn0w/Apple-iDocs"
  url "https://github.com/RbBtSn0w/Apple-iDocs/releases/download/v1.8.0/idocs-darwin-arm64.tar.gz"
  version "1.8.0"
  sha256 "96387dd7df666a9b65da3830709ffdb4f98b005f41df1946e254a65d76747f3f"
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
