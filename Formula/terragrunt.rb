class Terragrunt < Formula
  desc "Thin wrapper for Terraform e.g. for locking state"
  homepage "https://github.com/gruntwork-io/terragrunt"
  url "https://github.com/gruntwork-io/terragrunt/archive/v0.54.5.tar.gz"
  sha256 "b3530c68a704a98e1f7b3e7bb9a5be567ec82f6030470686620d3978d42722c5"
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
