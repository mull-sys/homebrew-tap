class Thruline < Formula
  desc "Minimal DSL and runtime for deterministic multiagent pipelines"
  homepage "https://thruline.work"
  url "https://github.com/pufferhaus/thruline/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "cb6831236ca5efd70b986b119afebbf327e05b14cfb1b54f84ab8f6ccb978717"
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
