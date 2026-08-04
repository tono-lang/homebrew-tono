class Tono < Formula
  desc "Tono language compiler: generate idiomatic SDKs from a single source"
  homepage "https://github.com/tono-lang/tono"
  version "0.0.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.4/tono-0.0.4-aarch64-apple-darwin.tar.gz"
      sha256 "07ee2a8af064c927245d34492c012728595b5ce7c0f08b4ec1ab23d2d5128fbb"
    end
    on_intel do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.4/tono-0.0.4-x86_64-apple-darwin.tar.gz"
      sha256 "f66b9713529b20fe483ccd88a0dd12035cba7f8ef04094eb6f6e2772f6ae110d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.4/tono-0.0.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c06bff0b50518ec8b045bcfea48632844dbe94a8db284199e3f7dd864538809e"
    end
    on_intel do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.4/tono-0.0.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d086f72e10e40e39574c66759c2ab25db38326d9d8ab0188f484551aa4966dc8"
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
