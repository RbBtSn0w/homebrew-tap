class Idocs < Formula
  desc "Swift-native Apple documentation CLI"
  homepage "https://github.com/RbBtSn0w/Apple-iDocs"
  url "https://github.com/RbBtSn0w/Apple-iDocs/releases/download/v1.7.5/idocs-darwin-arm64.tar.gz"
  version "1.7.5"
  sha256 "bcd117a92f618a110d1c0ae645bb02a63d34d65e27aa284fae6dd7b31155344b"
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
