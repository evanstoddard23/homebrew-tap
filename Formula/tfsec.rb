class Tfsec < Formula
  desc "Static analysis powered security scanner for your terraform code"
  homepage "https://github.com/liamg/tfsec"
  url "https://github.com/liamg/tfsec/archive/v0.55.0.tar.gz"
  sha256 "5e42d835a7391e986ab496c858493dce170082cd5724424683043971a3fe2d83"

  depends_on "go" => :build

  def install
	  system "scripts/install.sh", "v#{version}"
    bin.install "tfsec" => "tfsec"
  end

  test do
    system "#{bin}/tfsec", "--help"
  end
end
