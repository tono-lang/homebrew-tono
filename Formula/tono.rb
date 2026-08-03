class Tono < Formula
  desc "Tono language compiler: generate idiomatic SDKs from a single source"
  homepage "https://github.com/tono-lang/tono"
  version "0.0.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.2/tono-0.0.2-aarch64-apple-darwin.tar.gz"
      sha256 "12afed4b118f5a1df21e4e755c0f514565261cc98972c26e615eef24210bd8cf"
    end
    on_intel do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.2/tono-0.0.2-x86_64-apple-darwin.tar.gz"
      sha256 "8a880d46713e0a1cc5d21e5a603979ae65cb786f83d72daf810ac41cd0d18e19"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.2/tono-0.0.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9604d0d3d03e678303bd0bf519f4d1a777d3d9c8bdc71086342ac7baaa3eae20"
    end
    on_intel do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.2/tono-0.0.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5301babe3d3b4f1dc600bff149c875255850a4d7a736b19961eb01031180c104"
    end
  end

  def install
    bin.install "tono"
    bin.install "tono-frontend"
    bin.install "tono-lsp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tono version")
  end
end
