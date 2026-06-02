class Thruline < Formula
  desc "Minimal DSL and runtime for deterministic multiagent pipelines"
  homepage "https://thruline.work"
  url "https://github.com/dove-tools/thruline/archive/refs/tags/v0.2.2.tar.gz"
  sha256 "25ab729ca895279b3ff86a33c1243fbbbc483cb2348121b599291d93aa947474"
  license "MIT"
  head "https://github.com/dove-tools/thruline.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_args, "--path", "."
  end

  test do
    assert_match "thruline", shell_output("#{bin}/thruline --help")
  end
end
