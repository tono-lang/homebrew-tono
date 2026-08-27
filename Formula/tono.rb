class Tono < Formula
  desc "Tono language compiler: generate idiomatic SDKs from a single source"
  homepage "https://github.com/tono-lang/tono"
  version "0.0.13"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.13/tono-0.0.13-aarch64-apple-darwin.tar.gz"
      sha256 "bed5d33267fa4b9445f5b66656b5c0d7cb4e6e7635c0a993bcd8b1660337fa33"
    end
    on_intel do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.13/tono-0.0.13-x86_64-apple-darwin.tar.gz"
      sha256 "b34e4251476774f50a06964baa935b7fe6d7ac836210415b9f3bece12befc426"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.13/tono-0.0.13-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5c53970d08b391a807703bbe1d7d3bfaf906763ccc9639aecc295f02ecc768b7"
    end
    on_intel do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.13/tono-0.0.13-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "be603c2e4d0991118800588a81911a9698cd1398cd053ade4d2c4c5ec4e83724"
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
