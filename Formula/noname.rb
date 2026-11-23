class Noname < Formula
  desc "Calm, beautiful terminal front end for Claude Code"
  homepage "https://github.com/Silvertree2010/noname"
  version "0.2.23"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Silvertree2010/noname/releases/download/v#{version}/noname-aarch64-apple-darwin.tar.gz"
      sha256 "af549f5823524f4fbf735a6d2666598792f3bf5743f7a3abfc2d9f64153a1dea"
    end
    on_intel do
      url "https://github.com/Silvertree2010/noname/releases/download/v#{version}/noname-x86_64-apple-darwin.tar.gz"
      sha256 "a5ccf7a2666084040b9f56ac9147e296de46af383f34f130d955aeec9eec0361"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Silvertree2010/noname/releases/download/v#{version}/noname-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5959ca38d81665acb8304369dc6b15dcaa46e4262af6e08e1ed67131287faa1b"
    end
    on_intel do
      url "https://github.com/Silvertree2010/noname/releases/download/v#{version}/noname-x86_64-unknown-linux-musl.tar.gz"
      sha256 "89a131d6c446d93ac0acb14abe10d1fa92160c99f3f5d11edf6be6cd4b6f5f81"
    end
  end

  def install
    bin.install "noname"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/noname --version")
  end
end
