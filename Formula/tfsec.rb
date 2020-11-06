class Tfsec < Formula
  desc "Static analysis powered security scanner for your terraform code"
  homepage "https://github.com/liamg/tfsec"
  url "https://github.com/liamg/tfsec/archive/v0.36.2.tar.gz"
  sha256 "775baa3e859b30c586660b914d9b30c0ea00f7fbb44506f0ebe723f5ebee771c"

  depends_on "go" => :build

  def install
	  system "scripts/install.sh", "v#{version}"
    bin.install "tfsec" => "tfsec"
  end

  test do
    system "#{bin}/tfsec", "--help"
  end
end
