class Tono < Formula
  desc "Tono language compiler: generate idiomatic SDKs from a single source"
  homepage "https://github.com/tono-lang/tono"
  version "0.0.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.3/tono-0.0.3-aarch64-apple-darwin.tar.gz"
      sha256 "08ea40223fbcd47bf31006ae2558da79506c1472e2c3fcacd3ee6c350e55cabf"
    end
    on_intel do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.3/tono-0.0.3-x86_64-apple-darwin.tar.gz"
      sha256 "c2c9e7343a7f486ad4c5a9aef17d5535da41773348ded72627ab68606ba065e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.3/tono-0.0.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bfcb7e3638407849e17387ce2f4f4c3cb9af2ad23793650a9994428c2911dc01"
    end
    on_intel do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.3/tono-0.0.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "da54d74f0341108060eac2201439ec92376d4594199039ecd9834e2a6e595859"
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
