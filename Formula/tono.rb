class Tono < Formula
  desc "Tono language compiler: generate idiomatic SDKs from a single source"
  homepage "https://github.com/tono-lang/tono"
  version "0.0.14"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.14/tono-0.0.14-aarch64-apple-darwin.tar.gz"
      sha256 "6d0425b7be9d60a4bf1f626096ff47dc0abdb7b98138be72d84a33139cdff7c3"
    end
    on_intel do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.14/tono-0.0.14-x86_64-apple-darwin.tar.gz"
      sha256 "2c1aeb7b926bed4b16c585facc0f7a1446961bb9a0d912a7e84f3fe49f8f0a63"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.14/tono-0.0.14-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "119835639555119cb94cd591e31a95e5baa6d301c0bbefd5078a69147403d576"
    end
    on_intel do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.14/tono-0.0.14-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cd90d40cacf86f01fbc2e77a3353fe72fbf38454eb50c74870fde9a81e97889c"
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
