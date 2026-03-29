class Aitop < Formula
  desc "btop for AI — terminal dashboard for token usage and costs"
  homepage "https://github.com/bugkill3r/aitop"
  version "0.6.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bugkill3r/aitop/releases/download/v#{version}/aitop-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "85f391bc15ec7f4adfc850021949c600f3807b1a3f4e1f962eca2f4b80810897"
    end
    on_intel do
      url "https://github.com/bugkill3r/aitop/releases/download/v#{version}/aitop-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "ca1ee6e3d9f3d7460598a1f04a804d83a8fa0b0d63da6e3bbde37c77f4e7635c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bugkill3r/aitop/releases/download/v#{version}/aitop-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6455daabd210c318706ec535e220e4934df68ada3c56db2e49e5cb8d98b1fe73"
    end
    on_intel do
      url "https://github.com/bugkill3r/aitop/releases/download/v#{version}/aitop-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b0222dbd17a8b87ee2f201ca3f27ff2eac26c36a7b297bb16beaa0f0449fce8b"
    end
  end

  def install
    bin.install "aitop"
  end

  test do
    assert_match "aitop", shell_output("#{bin}/aitop --help")
  end
end
