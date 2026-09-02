class GhAddressCr < Formula
  include Language::Python::Virtualenv

  desc "Deterministic PR review-resolution control plane runtime"
  homepage "https://github.com/RbBtSn0w/gh-address-cr"
  url "https://files.pythonhosted.org/packages/d6/62/162756dba58d6ce5bbad6d0fae9b336d7b65689c07479df9e615822a6d18/gh_address_cr-3.9.0.tar.gz"
  sha256 "b7f7b2b15640ec5f4b6e635f1c01ad9bf3e4c723f77e13dc147fb0cd126bf9b8"
  license "MIT"

  depends_on "python@3.14"

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/a3/c2/24167ea9858356b47a87a50d39908bfdb72ceeefe0041586e704e5376b3a/certifi-2026.7.22.tar.gz"
    sha256 "741e2c3b351ddf169a738da9f2c048608ff7f2c5cc02f1ebc6b118bb090d5d55"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/e5/3f/143b048436775b0f76ac3eec145c019e8173ccc2885c8f20319b996d5e83/charset_normalizer-3.5.1.tar.gz"
    sha256 "6117b84ea48435e5356dc737f5121485c30920ba43375fa7b434fd753df0eac3"
  end

  resource "googleapis-common-protos" do
    url "https://files.pythonhosted.org/packages/c0/90/fb8f1c84537fbf210c1f53a53ae473a805f6599c5a40b93c1bbadd211f7a/googleapis_common_protos-1.75.2.tar.gz"
    sha256 "8829a3d1e4508c5b7b9a6b9525f7fccff611f8531644579a76466c29295d4bb2"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/5f/f7/abb373e5757eaec4b922b92f97ec8d6d7e057cf06778247604fbc4e7c3f3/idna-3.19.tar.gz"
    sha256 "5e0811a4383b21dc5838069f801c4fb62113b7447663d2530d2bd6e77b49bf15"
  end

  resource "opentelemetry-api" do
    url "https://files.pythonhosted.org/packages/ee/8b/aa9e2d8b8dfa7c946f7dec5d1f8f6ba8eca062f43509a06bdb5ce93d26c0/opentelemetry_api-1.44.0.tar.gz"
    sha256 "67647e5e9566edcf421166fdf022b3537f818635daa852b289e34604dc6fb33a"
  end

  resource "opentelemetry-exporter-otlp-proto-common" do
    url "https://files.pythonhosted.org/packages/61/09/4d717852c1cf3f854b76c7110a5d00883bc3c99288b9b0dbcbeb9e306eb6/opentelemetry_exporter_otlp_proto_common-1.44.0.tar.gz"
    sha256 "dc87a5a5bc58f149a56d1547e4691588fa12994cdc3bc039a694ccb3375862ac"
  end

  resource "opentelemetry-exporter-otlp-proto-http" do
    url "https://files.pythonhosted.org/packages/1a/87/95e2a5aaa795b4e2260d74e16df2d5541deb2ea9de010bcd615f4dee2654/opentelemetry_exporter_otlp_proto_http-1.44.0.tar.gz"
    sha256 "c633d7270ad6b57cd4cfbe8b0007a9e2e7c0cb50bd6c50fe2a7b245f721a09d8"
  end

  resource "opentelemetry-proto" do
    url "https://files.pythonhosted.org/packages/64/01/40ac4ae9a149263cc52c2cee200ddd80cb6d8db1a4610abf8eabce0fe771/opentelemetry_proto-1.44.0.tar.gz"
    sha256 "c547a79c2f8c0c515d31509154682e5921c7cfd5ca67b70e1f9266e2c3e103f3"
  end

  resource "opentelemetry-sdk" do
    url "https://files.pythonhosted.org/packages/5d/77/a6592cbc7c8d9bcc9d6757a9df45e04a7c585e3e6e7a13456da522b21109/opentelemetry_sdk-1.44.0.tar.gz"
    sha256 "cebe7f65dc12f26ead75c6064de12fd2a9052e5060c0272d402cfa203aae123b"
  end

  resource "opentelemetry-semantic-conventions" do
    url "https://files.pythonhosted.org/packages/8f/73/0cbdebcb4cf545fdd328da14f5137e37d0770c3f26185e478b0d15d94f50/opentelemetry_semantic_conventions-0.65b0.tar.gz"
    sha256 "f9b2b81e9d5b64f11bc952075e7e9c7fb0aab075c7fd1c46d597f1b919852d60"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/7d/fa/3944b40b07da9ce895c0e6303a5ab7d53da063554f534556b134a54d6093/packaging-26.3.tar.gz"
    sha256 "94edc256424af38762eb31306eed28beb9f0efc50a8837492c9d6fd6004aed79"
  end

  resource "protobuf" do
    url "https://files.pythonhosted.org/packages/86/73/f66c748df06e7fe24e658eddd600d19c4b40bad836c97ce2d0ad9851fb6b/protobuf-7.36.1.tar.gz"
    sha256 "d0f6470f0ce2b84e3feaea2d4b816378b37ba4d4aa08a274305373de93e2d524"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/ac/c3/e2a2b89f2d3e2179abd6d00ebd70bff6273f37fb3e0cc209f48b39d00cbf/requests-2.34.2.tar.gz"
    sha256 "f288924cae4e29463698d6d60bc6a4da69c89185ad1e0bcc4104f584e960b9ed"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/f6/cc/6253133b5bb138fc3306cebfbda2c520f545d36b5be2c7255cc528bb45d6/typing_extensions-4.16.0.tar.gz"
    sha256 "dc983d19a509c94dba722ee6abd33940f7c05a89e243c47e907eb4db6f1a43e5"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/53/0c/06f8b233b8fd13b9e5ee11424ef85419ba0d8ba0b3138bf360be2ff56953/urllib3-2.7.0.tar.gz"
    sha256 "231e0ec3b63ceb14667c67be60f2f2c40a518cb38b03af60abc813da26505f4c"
  end

  def install
    virtualenv_install_with_resources using: "python3.14"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gh-address-cr --version")
    assert_match "\"runtime_version\"", shell_output("#{bin}/gh-address-cr agent manifest")
  end
end
