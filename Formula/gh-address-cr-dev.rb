class GhAddressCrDev < Formula
  include Language::Python::Virtualenv

  desc "Deterministic PR review-resolution control plane runtime"
  homepage "https://github.com/RbBtSn0w/gh-address-cr"
  url "https://github.com/RbBtSn0w/gh-address-cr/releases/download/pr-preview/gh-address-cr-pr292.tar.gz"
  sha256 "8adac713f1a584128b77b4285349ff2a58a29b99aaae0be38d9c1777e66b277c"
  license "MIT"

  depends_on "python@3.14"
  conflicts_with "gh-address-cr", because: "both install gh-address-cr binary"

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/a3/c2/24167ea9858356b47a87a50d39908bfdb72ceeefe0041586e704e5376b3a/certifi-2026.7.22.tar.gz"
    sha256 "741e2c3b351ddf169a738da9f2c048608ff7f2c5cc02f1ebc6b118bb090d5d55"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/e5/3f/143b048436775b0f76ac3eec145c019e8173ccc2885c8f20319b996d5e83/charset_normalizer-3.5.1.tar.gz"
    sha256 "6117b84ea48435e5356dc737f5121485c30920ba43375fa7b434fd753df0eac3"
  end

  resource "googleapis-common-protos" do
    url "https://files.pythonhosted.org/packages/4b/13/f83676de1dce4f8106bcba91725b3f3f4baf6ca1977685102b008b8e0097/googleapis_common_protos-1.75.4.tar.gz"
    sha256 "4587babdc82a8d7e5a3d4f5a6697e064bf44a598b4d08341c212b68185eadbcd"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/f5/08/8eea9d4b8302028f3abb2c0813953f7aec26d33b7a8960ed760e65ff29fa/idna-3.20.tar.gz"
    sha256 "a7db850025b95ded1eae8a46181a1a6c56c92c96f0e2b005d9ff8dc0210cab44"
  end

  resource "opentelemetry-api" do
    url "https://files.pythonhosted.org/packages/1f/dc/e12c1fe1ed8a7b7149777127b1a0e12ce5bd5a81d97408bedc2128c260f5/opentelemetry_api-1.45.0.tar.gz"
    sha256 "711ede81773c8025c2c03dac0450bc89f3d30aea6eabcc815c570d4e35a963f7"
  end

  resource "opentelemetry-exporter-http-transport" do
    url "https://files.pythonhosted.org/packages/5e/31/cbedb10e08c3c932b80f58edf055a16bb48a500c23c617b758fb3ec18f08/opentelemetry_exporter_http_transport-0.66b0.tar.gz"
    sha256 "2c229b6593eaa22c86d9b8a15843dc23b406dbda00fb138339189aab07923b4e"
  end

  resource "opentelemetry-exporter-otlp-common" do
    url "https://files.pythonhosted.org/packages/68/09/01239cdfe8a414d46ed625b68b6da92666ffd16d93cc6dadf89404b4bd85/opentelemetry_exporter_otlp_common-0.66b0.tar.gz"
    sha256 "362268ec6aa705e183776ff938539df1e8ce45bc5509d242538b1d40c26fe6a6"
  end

  resource "opentelemetry-exporter-otlp-proto-common" do
    url "https://files.pythonhosted.org/packages/e5/e0/ee3823dbdc10da15b5750becc37b61194dd7c55e3b56764ecbbe446f659a/opentelemetry_exporter_otlp_proto_common-1.45.0.tar.gz"
    sha256 "36495115a0c6a7aa946cfda9d59b6ed4e917b6ab0f75cdaf66bc1b176ec1be1f"
  end

  resource "opentelemetry-exporter-otlp-proto-http" do
    url "https://files.pythonhosted.org/packages/94/78/a503801c1c8f80b1d8aad0e14106a7c57f39344001652a78a683f9a9089e/opentelemetry_exporter_otlp_proto_http-1.45.0.tar.gz"
    sha256 "2f35496d96809f946f41b8805e6b93aec6c9b71b5fd759b75b6af4c084d992ae"
  end

  resource "opentelemetry-proto" do
    url "https://files.pythonhosted.org/packages/72/28/67c38cfb7e2bdfdd0cde7dcdd0424aed0291fbd64aa4ea3e7e913734711a/opentelemetry_proto-1.45.0.tar.gz"
    sha256 "96ee414f24bc3f61ea8e17dc56b4348d4049d73db3eb17c6b3edf75b5b403300"
  end

  resource "opentelemetry-sdk" do
    url "https://files.pythonhosted.org/packages/ac/ed/ad32d76cc86ebce601105d01d13f8a08d6abc1852eaf69d79cf199bc1ee7/opentelemetry_sdk-1.45.0.tar.gz"
    sha256 "20caa5130505e386c67c3da1c76e446c842698ced54c76c6148679539aa97972"
  end

  resource "opentelemetry-semantic-conventions" do
    url "https://files.pythonhosted.org/packages/2e/21/910f085c0b83b80e45c341c7859baef37c877046b2c44c88d5ff2d5db948/opentelemetry_semantic_conventions-0.66b0.tar.gz"
    sha256 "97a77dce484c54861e7eeff7651fd8a806dd3c30e501dc316730215ec36890e6"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/7d/fa/3944b40b07da9ce895c0e6303a5ab7d53da063554f534556b134a54d6093/packaging-26.3.tar.gz"
    sha256 "94edc256424af38762eb31306eed28beb9f0efc50a8837492c9d6fd6004aed79"
  end

  resource "protobuf" do
    url "https://files.pythonhosted.org/packages/d9/89/5b8517baa72f84a67b8a307ba953c91057af618bf40bf676f3c03551f8f0/protobuf-7.36.2.tar.gz"
    sha256 "497d0463ff3316681da6c0b9e8d06cb465d61abce00b613ab42226175644d1bb"
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
    url "https://files.pythonhosted.org/packages/e3/05/b17359e1cefb4f909b5e40b1b90a496d987258916dbbf88e842c729f510e/urllib3-2.8.0.tar.gz"
    sha256 "63bf2ead4c879426ebf22ef2a781eeb4aa3b4ae798a0435506f8687fd5bb9b63"
  end

  def install
    virtualenv_install_with_resources using: "python3.14"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gh-address-cr --version")
    assert_match "\"runtime_version\"", shell_output("#{bin}/gh-address-cr agent manifest")
  end
end
