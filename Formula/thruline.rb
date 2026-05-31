class Thruline < Formula
  desc "Minimal DSL and runtime for deterministic multiagent pipelines"
  homepage "https://thruline.work"
  url "https://github.com/pufferhaus/thruline/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "3e5cf380c41cfa1bd2cfaf1f287565f88d6bccd447fb5ae05a2e05b8805ba27c"
  license "MIT"
  head "https://github.com/pufferhaus/thruline.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_args, "--path", "."
  end

  test do
    assert_match "thruline", shell_output("#{bin}/thruline --help")
  end
end
