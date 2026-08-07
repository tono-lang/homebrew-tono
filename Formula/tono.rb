class Tono < Formula
  desc "Tono language compiler: generate idiomatic SDKs from a single source"
  homepage "https://github.com/tono-lang/tono"
  version "0.0.6"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.6/tono-0.0.6-aarch64-apple-darwin.tar.gz"
      sha256 "16ddc52e064ee1f960b1909ebf2e26777bf8e5b4a227405b02a69e42cd763c1c"
    end
    on_intel do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.6/tono-0.0.6-x86_64-apple-darwin.tar.gz"
      sha256 "978e5449d563844e46504424bc25124c9cca22ff9b7e45191377feb878994d50"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.6/tono-0.0.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "122132262d93f8d07436f5561a027c94b0c2b47a2a0b896f7cc86ebf3258e0f8"
    end
    on_intel do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.6/tono-0.0.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8dc1c020c9b43b3994ffe65a809a2604feed45142662644fc550245a49b22019"
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
