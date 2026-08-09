class Tono < Formula
  desc "Tono language compiler: generate idiomatic SDKs from a single source"
  homepage "https://github.com/tono-lang/tono"
  version "0.0.7"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.7/tono-0.0.7-aarch64-apple-darwin.tar.gz"
      sha256 "58ce552a94bb559d0cf902476574407181f97e5e3bb45153bb482d8f8cf0829c"
    end
    on_intel do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.7/tono-0.0.7-x86_64-apple-darwin.tar.gz"
      sha256 "ae8ab788dae6e9c6784370af124f57737374fa25aea5c47f687240ac87e4af65"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.7/tono-0.0.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2f297e8e54b358d7ad1c9d0a6db1f561284541ab44ccc0ad6790d3c857fe35af"
    end
    on_intel do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.7/tono-0.0.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3b1aa51f3e9917a2bc6fe2bd1210ed0e65c967f77be6fae04233f75bc1cef295"
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
