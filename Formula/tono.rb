class Tono < Formula
  desc "Tono language compiler: generate idiomatic SDKs from a single source"
  homepage "https://github.com/tono-lang/tono"
  version "0.0.12"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.12/tono-0.0.12-aarch64-apple-darwin.tar.gz"
      sha256 "cd4221ce74e280a404f9c46659c300cb6412defae255f5f22255191e082242c6"
    end
    on_intel do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.12/tono-0.0.12-x86_64-apple-darwin.tar.gz"
      sha256 "bd79e314a3d4a1492379f12ded5e9ca3c51ef916363aead74506034bbeddb36f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.12/tono-0.0.12-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "37e96d151ee5672f075470a9d3eb673e72226bf0160a187b308fb151ec5b3b78"
    end
    on_intel do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.12/tono-0.0.12-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2416a8a07fd5d4f5504bf7c3caf75fbb3ce57c5e19695fda4f37f6c5f1e0cb68"
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
