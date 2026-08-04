class Tono < Formula
  desc "Tono language compiler: generate idiomatic SDKs from a single source"
  homepage "https://github.com/tono-lang/tono"
  version "0.0.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.5/tono-0.0.5-aarch64-apple-darwin.tar.gz"
      sha256 "fc8489f997579fe2422ad5a1e3eee0ca059834b0cb2965780d06fd7dac989b68"
    end
    on_intel do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.5/tono-0.0.5-x86_64-apple-darwin.tar.gz"
      sha256 "06205c453c8cc45d9baa05535989f7b124e4bc03bfed85be25d2ec93e30884c7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.5/tono-0.0.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e08fbd34e3808018d043d8761b3c644114061ea277e9dd86e0bddbae82aebedd"
    end
    on_intel do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.5/tono-0.0.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0f8151d162009ede08b92f95b3d156c6fed6e7441affc6834fa6dc81ab32472e"
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
