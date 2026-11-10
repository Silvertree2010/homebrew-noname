class Noname < Formula
  desc "Calm, beautiful terminal front end for Claude Code"
  homepage "https://github.com/Silvertree2010/noname"
  version "0.1.7"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Silvertree2010/noname/releases/download/v#{version}/noname-aarch64-apple-darwin.tar.gz"
      sha256 "09a120c02947c8c97466388bbc3d195c8b7b7ea44451ceb770fa808d5081dcd2"
    end
    on_intel do
      url "https://github.com/Silvertree2010/noname/releases/download/v#{version}/noname-x86_64-apple-darwin.tar.gz"
      sha256 "c280506a55e645e83269061ebcc811699ec78daf0d41b74ea8fe2fe29153c539"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Silvertree2010/noname/releases/download/v#{version}/noname-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9eeee0be5ed0ab5fe1ef704adc0eb9863bb1a615a4b77e41e1da85737547eb6f"
    end
    on_intel do
      url "https://github.com/Silvertree2010/noname/releases/download/v#{version}/noname-x86_64-unknown-linux-musl.tar.gz"
      sha256 "dd8fcd94aaa030674334dc5f0cfb2b23e23f4d602d7e0273e48825d893c392ae"
    end
  end

  def install
    bin.install "noname"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/noname --version")
  end
end
