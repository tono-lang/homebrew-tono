class Tono < Formula
  desc "Tono language compiler: generate idiomatic SDKs from a single source"
  homepage "https://github.com/tono-lang/tono"
  version "0.0.11"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.11/tono-0.0.11-aarch64-apple-darwin.tar.gz"
      sha256 "0aeddbcde0cc185cfaa7b8a90db64f438f42430d5586e1253e8a782d909fcd7a"
    end
    on_intel do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.11/tono-0.0.11-x86_64-apple-darwin.tar.gz"
      sha256 "ad756f16db242b47391bd4bb110ad2f8f74ef875e5ad4a14099c8404c1b00702"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.11/tono-0.0.11-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "87c9fd9ddd4337ff1f9967e10a59fa600be0c6ce14c8892ecfb6eab6b99cc776"
    end
    on_intel do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.11/tono-0.0.11-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "90b511c767683bf8bb9ab8864acc8db4412b9b35cdcc5b729fffab7494b2a766"
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
