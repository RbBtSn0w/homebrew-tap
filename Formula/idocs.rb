class Idocs < Formula
  desc "Swift-native Apple documentation CLI"
  homepage "https://github.com/RbBtSn0w/Apple-iDocs"
  url "https://github.com/RbBtSn0w/Apple-iDocs/releases/download/v1.7.7/idocs-darwin-arm64.tar.gz"
  version "1.7.7"
  sha256 "f6751c7f0ceb086dc0c3381bbaf92e1e9c2590b07bb4fb361f5f852c2f2b2c61"
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
