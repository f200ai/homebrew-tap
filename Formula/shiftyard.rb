class Shiftyard < Formula
  desc "Open-source software factory for coding agents on your own machines"
  homepage "https://f200.ai"
  url "https://static.crates.io/crates/shiftyard/shiftyard-0.0.1.crate"
  sha256 "0e51bf8e9c99cfd1aad48a009cb71d77c96fbbc713356818483b4d6c9f5f03b8"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "pre-alpha", shell_output(bin/"shiftyard")
  end
end
