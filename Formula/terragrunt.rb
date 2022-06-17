class Terragrunt < Formula
  desc "Thin wrapper for Terraform e.g. for locking state"
  homepage "https://github.com/gruntwork-io/terragrunt"
  url "https://github.com/gruntwork-io/terragrunt/archive/v0.38.0.tar.gz"
  sha256 "9d102cde3080b2ae3f495f7c377ddcfc8130c60f9b26b0a8caaa9eff772dd625"
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
