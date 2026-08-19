class Tono < Formula
  desc "Tono language compiler: generate idiomatic SDKs from a single source"
  homepage "https://github.com/tono-lang/tono"
  version "0.0.10"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.10/tono-0.0.10-aarch64-apple-darwin.tar.gz"
      sha256 "50eeed528edce036d33addb5fbd43dd174a4a1b162658d6d6a3fcaad3073fada"
    end
    on_intel do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.10/tono-0.0.10-x86_64-apple-darwin.tar.gz"
      sha256 "9b2a59ccb0eea58da91429ec19cb524aa8b095a813203f97111358c1ec426244"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.10/tono-0.0.10-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ef2ae3dfd6f3dc4f583172fd943bc6a1623dd7761382b5ec2df20b264c5a54eb"
    end
    on_intel do
      url "https://github.com/tono-lang/tono/releases/download/v0.0.10/tono-0.0.10-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "eef9e3519bf5fee0c95ea614226c5249f55ad98a642b4d6f8a9ef22eb8a63873"
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
