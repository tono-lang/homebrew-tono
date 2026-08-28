class Tono < Formula
  desc "Tono language compiler: generate idiomatic SDKs from a single source"
  homepage "https://github.com/tono-lang/tono"
  version "0.0.15"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.15/tono-0.0.15-aarch64-apple-darwin.tar.gz"
      sha256 "5ebbdef1e1630b5126b4fa566195965e8d9ad07a04d0a3b1c7e197fdb6721903"
    end
    on_intel do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.15/tono-0.0.15-x86_64-apple-darwin.tar.gz"
      sha256 "360d36faa21d60687a90fb00d1cf5912971788c0760c4d62f306ff76fadf3c09"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.15/tono-0.0.15-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f5f9ecab40ed135dd32cfcfdf8afb458a81b407268c5d4c79a84ec2957013042"
    end
    on_intel do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.15/tono-0.0.15-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e2daf6d44eae17bba5f0029276165a7d03043c98c089a653ee64d425a28392ac"
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
