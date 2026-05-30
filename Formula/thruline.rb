class Thruline < Formula
  desc "Minimal DSL and runtime for deterministic multiagent pipelines"
  homepage "https://thruline.work"
  url "https://github.com/pufferhaus/thruline/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "41c8c3176df06d783d4202cd05352851436dd3732fb12acddf5dadcbfd3385d0"
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
