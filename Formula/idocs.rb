class Idocs < Formula
  desc "Swift-native Apple documentation CLI"
  homepage "https://github.com/RbBtSn0w/Apple-iDocs"
  url "https://github.com/RbBtSn0w/Apple-iDocs/releases/download/v1.7.0/idocs-darwin-arm64.tar.gz"
  version "1.7.0"
  sha256 "151bbe70e019a8fc8a70ff0d77a346e6e820e0ded7b0c9afb78c13de5503be6a"
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
