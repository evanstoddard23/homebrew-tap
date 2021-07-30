class Tfsec < Formula
  desc "Static analysis powered security scanner for your terraform code"
  homepage "https://github.com/liamg/tfsec"
  url "https://github.com/liamg/tfsec/archive/v0.53.3.tar.gz"
  sha256 "f284b1fa54904d67d8d65c8aca43f8b89a4e309f7b5dc3a9142a5fea58edf36a"

  depends_on "go" => :build

  def install
	  system "scripts/install.sh", "v#{version}"
    bin.install "tfsec" => "tfsec"
  end

  test do
    system "#{bin}/tfsec", "--help"
  end
end
