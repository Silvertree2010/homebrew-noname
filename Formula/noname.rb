class Noname < Formula
  desc "Calm, beautiful terminal front end for Claude Code"
  homepage "https://github.com/Silvertree2010/noname"
  version "0.1.5"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Silvertree2010/noname/releases/download/v#{version}/noname-aarch64-apple-darwin.tar.gz"
      sha256 "6b07e2ecf0a8cec6e7113dddea8308fb62de5de73e5f8129cec46093fc49921c"
    end
    on_intel do
      url "https://github.com/Silvertree2010/noname/releases/download/v#{version}/noname-x86_64-apple-darwin.tar.gz"
      sha256 "096dc4d97d5c0c446bf02c46467884526db4fbc36bf51e54253e753158d58df9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Silvertree2010/noname/releases/download/v#{version}/noname-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c76c72781cb04df99fb96dedc9e8e732a5d7887736769feac40b41d874a196bf"
    end
    on_intel do
      url "https://github.com/Silvertree2010/noname/releases/download/v#{version}/noname-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4d900d6c4b787320bbfd2959e6bd009c0f6bae43fca7878cd2cef3dec4242cc9"
    end
  end

  def install
    bin.install "noname"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/noname --version")
  end
end
