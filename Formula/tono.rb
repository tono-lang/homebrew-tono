class Tono < Formula
  desc "Tono language compiler: generate idiomatic SDKs from a single source"
  homepage "https://github.com/tono-lang/tono"
  version "0.0.9"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.9/tono-0.0.9-aarch64-apple-darwin.tar.gz"
      sha256 "063c28c21617fb638fe1315b00af3fc1ed6da7c9a1fb387798eb343ba4683305"
    end
    on_intel do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.9/tono-0.0.9-x86_64-apple-darwin.tar.gz"
      sha256 "8f6e79aa62fd218a566e76d6b79c61036faaf8bafec5cadbc9e43c91434492c3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.9/tono-0.0.9-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5cb50114159af013f1ae95b8eba21ec8f1178973139dd81e2e72fccc6316bd57"
    end
    on_intel do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.9/tono-0.0.9-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a5eca2f60bab3ec0ec8fdf3976fe790fb243ee063673c366730bff175ed457fa"
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
