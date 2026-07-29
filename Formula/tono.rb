class Tono < Formula
  desc "Tono language compiler: generate idiomatic SDKs from a single source"
  homepage "https://github.com/tono-lang/tono"
  version "0.0.0"
  license "Apache-2.0"

  # This file is a placeholder until the first tag is pushed on tono-lang/tono.
  # From then on, tono's release workflow (.github/workflows/release.yml)
  # renders and pushes the real formula here on every release, with per-
  # platform url/sha256 pairs for macOS (arm64/x86_64) and Linux (x86_64/arm64).
  on_macos do
    on_arm do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.0/tono-0.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.0/tono-0.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.0/tono-0.0.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.0/tono-0.0.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "tono"
    bin.install "tono-frontend"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tono version")
  end
end
