class Terragrunt < Formula
  desc "Thin wrapper for Terraform e.g. for locking state"
  homepage "https://github.com/gruntwork-io/terragrunt"
  url "https://github.com/gruntwork-io/terragrunt/archive/refs/tags/v0.66.8.tar.gz"
  sha256 "c67e31f2be2bf5ce0a33744ebf963a07ff9b511d53fbcad488ff9107f364fbbf"
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
