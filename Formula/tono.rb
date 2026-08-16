class Tono < Formula
  desc "Tono language compiler: generate idiomatic SDKs from a single source"
  homepage "https://github.com/tono-lang/tono"
  version "0.0.8"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.8/tono-0.0.8-aarch64-apple-darwin.tar.gz"
      sha256 "94860e77763cae20938ed3f3f91d876b346054f39408b30019483385739822d7"
    end
    on_intel do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.8/tono-0.0.8-x86_64-apple-darwin.tar.gz"
      sha256 "95b75ac13798f1cd02a914572cf232ddd3fac0747fb83c9e9964447ec73b42cc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.8/tono-0.0.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "22385b19eda5da6bc0a8f134845e1042fe7dc7578962eed237c1a0f426e752df"
    end
    on_intel do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.8/tono-0.0.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c82123a602de684a93131e976c4027e1c2b98e101fee9b33de404d968ee93c22"
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
