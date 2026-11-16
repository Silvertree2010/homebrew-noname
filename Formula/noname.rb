class Noname < Formula
  desc "Calm, beautiful terminal front end for Claude Code"
  homepage "https://github.com/Silvertree2010/noname"
  version "0.2.3"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Silvertree2010/noname/releases/download/v#{version}/noname-aarch64-apple-darwin.tar.gz"
      sha256 "ce617d00f91d798b18eb8d361b9f7e31c5bfb427272159ddb3a87094c6e35bbb"
    end
    on_intel do
      url "https://github.com/Silvertree2010/noname/releases/download/v#{version}/noname-x86_64-apple-darwin.tar.gz"
      sha256 "6aa6087fc2a4da84071c15593ddeb4db6e7b54a8238d630c153bac26474a5b6e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Silvertree2010/noname/releases/download/v#{version}/noname-aarch64-unknown-linux-musl.tar.gz"
      sha256 "641aad3a2f80f0f104a26b0027dc3d667041458590ce2e997e3651528d7f5ce4"
    end
    on_intel do
      url "https://github.com/Silvertree2010/noname/releases/download/v#{version}/noname-x86_64-unknown-linux-musl.tar.gz"
      sha256 "517e6396c2cf8f7f36eb6aae3426c4d2787eba24a130fde3b34ee25c3d11d617"
    end
  end

  def install
    bin.install "noname"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/noname --version")
  end
end
