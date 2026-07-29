class Tono < Formula
  desc "Tono language compiler: generate idiomatic SDKs from a single source"
  homepage "https://github.com/tono-lang/tono"
  version "0.0.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.1/tono-0.0.1-aarch64-apple-darwin.tar.gz"
      sha256 "3e6f3fdd4f4f8fb0b28c840f32997286bede41c84631b45ef53e31707ca82d6b"
    end
    on_intel do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.1/tono-0.0.1-x86_64-apple-darwin.tar.gz"
      sha256 "0a8a42bda9744bfc99a62a73db8fb64a5f12c265760baf2521f76f254e7fce50"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.1/tono-0.0.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4deee7745e966a8739d063aa86c5e333616e88f1a3563c8e05bcfc67ed92923b"
    end
    on_intel do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.1/tono-0.0.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cf5f660419019af4b63c6b7e1e86dc7b83d513180b872d97c29c63d9a0d0cd90"
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
