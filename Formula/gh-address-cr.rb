class GhAddressCr < Formula
  include Language::Python::Virtualenv

  desc "Deterministic PR review-resolution control plane runtime"
  homepage "https://github.com/RbBtSn0w/gh-address-cr"
  url "https://files.pythonhosted.org/packages/63/6c/83795f47a94e33ba5a8323f97ff1433aaae47e7af6d685f80c861c65f8d4/gh_address_cr-3.21.3.tar.gz"
  sha256 "0c6f69597efec989cd25a8d19220ab7396370eeacf8c01bf43993851e10059fa"
  license "MIT"

  bottle do
    root_url "https://github.com/RbBtSn0w/gh-address-cr/releases/download/v3.21.3"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "9a6fb0546198d05e4427ccab7df9a9eafb5c66edf4f386b2aa525194faa89513"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "ec74c8beba1d28e880675f4828d9d0be96481f659bf22417ffed312698871635"
    sha256 cellar: :any_skip_relocation, tahoe:         "98fb976c5d5916327a300f0741485e2beecb108547a37ef0d69b123ee02a2a99"
    sha256 cellar: :any_skip_relocation, sequoia:       "07418dbbe590b028d099e13d9c978f14573660c93e272b0ea65407b348c27b74"
  end

  depends_on "python@3.14"

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/fd/11/b524cbd9bbdaca58608e4cf4053fd463417549e1959fa8d3aa18319f9555/certifi-2026.10.23.tar.gz"
    sha256 "a9895e6e2758b371e0545e321a3a8fd1fcfd9829ada8824a936dfb16aaaf36cd"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/33/1c/f41d4e74c28ab327ff3acd36053f7ea506c55872d7a90b0fa71aa3ab0c89/charset_normalizer-3.5.2.tar.gz"
    sha256 "39de2a259fc954455c57274dc94c79d5842774e1247a016aff30bc0efed0f4ef"
  end

  resource "googleapis-common-protos" do
    url "https://files.pythonhosted.org/packages/62/b6/bc095b23a3e0d978e75c8c18cabe4c11f791837410670e4486f0d539bfba/googleapis_common_protos-1.76.0.tar.gz"
    sha256 "71db0e44a1d4c2dd024ebad44ca67129cc1e2892e4861df466764749d5ef8642"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/f5/08/8eea9d4b8302028f3abb2c0813953f7aec26d33b7a8960ed760e65ff29fa/idna-3.20.tar.gz"
    sha256 "a7db850025b95ded1eae8a46181a1a6c56c92c96f0e2b005d9ff8dc0210cab44"
  end

  resource "opentelemetry-api" do
    url "https://files.pythonhosted.org/packages/19/14/cf3a6b6448849656e1e5f4e2101f3988dc6789724050096aba1bc5ccf592/opentelemetry_api-1.45.2.tar.gz"
    sha256 "d7b0008e21e5fd61cbe7a7f34ca3b6905a78ab677d9bc395e299359c75cda6b4"
  end

  resource "opentelemetry-exporter-http-transport" do
    url "https://files.pythonhosted.org/packages/a6/e6/dbeb3e217418071656232a4028c791060d219f218cef1249b664049d12c0/opentelemetry_exporter_http_transport-0.66b2.tar.gz"
    sha256 "66d6ed810a515432c8891da9a834464332fd70badeca45bdeeae81b4280c903b"
  end

  resource "opentelemetry-exporter-otlp-common" do
    url "https://files.pythonhosted.org/packages/5a/3c/3f2cc8c42bde2620e65024d71e2eb025f7bd0821bb363b52bcc5a3260dbd/opentelemetry_exporter_otlp_common-0.66b2.tar.gz"
    sha256 "06f5a9b88638e310efa1f1d206cdf6b75393e112aba4e174a963416192bd1028"
  end

  resource "opentelemetry-exporter-otlp-proto-common" do
    url "https://files.pythonhosted.org/packages/69/58/239c98b36d9ea317098769957043c251703636a26189c884fba46c1dad84/opentelemetry_exporter_otlp_proto_common-1.45.2.tar.gz"
    sha256 "f1f2806f3f28ce7938033823e50934fcd91595a39de38e69a28a51e19f40fc6d"
  end

  resource "opentelemetry-exporter-otlp-proto-http" do
    url "https://files.pythonhosted.org/packages/db/07/b7b01ecb69d02f540e679a9e36f7413d081f225bbbed4469d212ada10bb7/opentelemetry_exporter_otlp_proto_http-1.45.2.tar.gz"
    sha256 "5984a3fb46bc4628e4e2b85d4a6e72637e03962aae6cf372791137768a4ad939"
  end

  resource "opentelemetry-proto" do
    url "https://files.pythonhosted.org/packages/24/9c/1aa4ce60e9bc72af20dc49c92cc0566825092d92b3d6a277439fb5fb7c01/opentelemetry_proto-1.45.2.tar.gz"
    sha256 "bd8d23cf770605b0af9b7be2071d26a464fea289d35429abfd2a66226114ad64"
  end

  resource "opentelemetry-sdk" do
    url "https://files.pythonhosted.org/packages/7b/1a/74a21d4d6969fb8b432ac397e66112a8167a6deb267ea4559dbaf2fe91ef/opentelemetry_sdk-1.45.2.tar.gz"
    sha256 "7eec4de13dd21ff3a1670dcb0e02079e692736f94d733dfdce5af461d884248d"
  end

  resource "opentelemetry-semantic-conventions" do
    url "https://files.pythonhosted.org/packages/37/3f/50f95972b50e8e353f5b9342034c9cd17730f1956f009ce6a3fbbd89f9ce/opentelemetry_semantic_conventions-0.66b2.tar.gz"
    sha256 "7da5f1a5dc4383eb66711d4d3d3e71824d9403ac1559fea021cc103c1a4c4976"
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
