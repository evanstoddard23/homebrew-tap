class Terragrunt < Formula
  desc "Thin wrapper for Terraform e.g. for locking state"
  homepage "https://github.com/gruntwork-io/terragrunt"
  url "https://github.com/gruntwork-io/terragrunt/archive/v0.51.2.tar.gz"
  sha256 "38e002ffaaf12e9c5b1aee11126ec5edc047a10e0b4e34253f4c506b2dd51c70"
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
