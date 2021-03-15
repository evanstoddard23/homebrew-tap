class Tfsec < Formula
  desc "Static analysis powered security scanner for your terraform code"
  homepage "https://github.com/liamg/tfsec"
  url "https://github.com/liamg/tfsec/archive/v0.39.7.tar.gz"
  sha256 "d53acb717d3ff36b16f8a69f2d04d45cfa88cc2f2c27ad92952a0a623792bd92"

  depends_on "go" => :build

  def install
	  system "scripts/install.sh", "v#{version}"
    bin.install "tfsec" => "tfsec"
  end

  test do
    system "#{bin}/tfsec", "--help"
  end
end
