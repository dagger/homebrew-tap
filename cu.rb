class Cu < Formula
  desc "Containerized environments for coding agents"
  homepage "https://github.com/dagger/container-use"
  url "https://github.com/dagger/container-use/archive/refs/heads/main.tar.gz"
  version "HEAD"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w", output: bin/"cu"), "./cmd/cu"
  end

  test do
    assert_match "container-use", shell_output("#{bin}/cu --help")
  end
end