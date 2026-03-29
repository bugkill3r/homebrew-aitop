class Aitop < Formula
  desc "btop for AI — terminal dashboard for token usage and costs"
  homepage "https://github.com/bugkill3r/aitop"
  version "0.6.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bugkill3r/aitop/releases/download/v#{version}/aitop-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "e48a0ab30e69a6423ed7ecd39b1727811eb832d4736526116fb5fa37fe5fbde4"
    end
    on_intel do
      url "https://github.com/bugkill3r/aitop/releases/download/v#{version}/aitop-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "16ac909772821affae875ae01bc80ee2d51d8aa1114149546249f96eb1118825"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bugkill3r/aitop/releases/download/v#{version}/aitop-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "66732189e0520071ec32dddd7734f46c876cbd6cea0ad8da8bfcbec88470fe7a"
    end
    on_intel do
      url "https://github.com/bugkill3r/aitop/releases/download/v#{version}/aitop-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6b81d9dbb8f912f9948b7a9463e9cd8576ca9c6703331f197794fac2f10f4606"
    end
  end

  def install
    bin.install "aitop"
  end

  test do
    assert_match "aitop", shell_output("#{bin}/aitop --help")
  end
end
