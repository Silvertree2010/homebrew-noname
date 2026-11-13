class Noname < Formula
  desc "Calm, beautiful terminal front end for Claude Code"
  homepage "https://github.com/Silvertree2010/noname"
  version "0.2.0"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Silvertree2010/noname/releases/download/v#{version}/noname-aarch64-apple-darwin.tar.gz"
      sha256 "442bcdc7147ca6b61c39211276a88d7238a6166a65414716f1500d3e5c94ea47"
    end
    on_intel do
      url "https://github.com/Silvertree2010/noname/releases/download/v#{version}/noname-x86_64-apple-darwin.tar.gz"
      sha256 "e4b7f57936847900dbeedd161f8c9e85f3ef8a21ce14b38d8f628146554770ce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Silvertree2010/noname/releases/download/v#{version}/noname-aarch64-unknown-linux-musl.tar.gz"
      sha256 "eea5744787d70c72e57bb85cb484f4a9de032eefc2e85d6226fe207db8af72c4"
    end
    on_intel do
      url "https://github.com/Silvertree2010/noname/releases/download/v#{version}/noname-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0d4253eeb1966f5c2981f5041d3816d9c42fdbad571b53e70cadfe6e3027be6f"
    end
  end

  def install
    bin.install "noname"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/noname --version")
  end
end
