class Aitop < Formula
  desc "btop for AI — terminal dashboard for token usage and costs"
  homepage "https://github.com/bugkill3r/aitop"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bugkill3r/aitop/releases/download/v#{version}/aitop-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "f78cd80fe2dc4e9b9f7ac9c76b2638d544e29859c6bd4d29589431c5ed523e43"
    end
    on_intel do
      url "https://github.com/bugkill3r/aitop/releases/download/v#{version}/aitop-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "3a34f058f330dfa41f1f838707f5d9df6db8572fa07110489139d333a27997f5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bugkill3r/aitop/releases/download/v#{version}/aitop-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9a0580fd503057028655afa288a2594001f3d62d4b4ea5bf3a60dfed139d70cc"
    end
    on_intel do
      url "https://github.com/bugkill3r/aitop/releases/download/v#{version}/aitop-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8ecdae37946f2d2588c4d55df3b9329fe4b451780de361df5cf1a466bbd7b5aa"
    end
  end

  def install
    bin.install "aitop"
  end

  test do
    assert_match "aitop", shell_output("#{bin}/aitop --help")
  end
end
