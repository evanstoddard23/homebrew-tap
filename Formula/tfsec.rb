class Tfsec < Formula
  desc "Static analysis powered security scanner for your terraform code"
  homepage "https://github.com/liamg/tfsec"
  url "https://github.com/liamg/tfsec/archive/v0.36.0.tar.gz"
  sha256 "decc65f8f56b39a8ea12a268fe7bf5fb14da16925f55d7ad2ee2a39741ebab3d"

  depends_on "go" => :build

  def install
	  system "scripts/install.sh", "v#{version}"
    bin.install "tfsec" => "tfsec"
  end

  test do
    system "#{bin}/tfsec", "--help"
  end
end
