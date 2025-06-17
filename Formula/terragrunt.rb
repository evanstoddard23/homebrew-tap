class Terragrunt < Formula
  desc "Thin wrapper for Terraform e.g. for locking state"
  homepage "https://github.com/gruntwork-io/terragrunt"
  url "https://github.com/gruntwork-io/terragrunt/archive/refs/tags/v0.81.7.tar.gz"
  sha256 "44702caebb7984e077b5126326956b0c11b100f0215661c34fa4c3ae88527f23"
  license "MIT"

  depends_on "go" => :build
  depends_on "tfenv" => :recommended
  depends_on "terraform" => :optional

  def install
    system "go", "build", "-ldflags", "-X main.VERSION=v#{version}", *std_go_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/terragrunt --version")
  end
end
