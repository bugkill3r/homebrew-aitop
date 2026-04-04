class Aitop < Formula
  desc "btop for AI — terminal dashboard for token usage and costs"
  homepage "https://github.com/bugkill3r/aitop"
  version "0.6.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bugkill3r/aitop/releases/download/v#{version}/aitop-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "3cd4d2986d004da95c0252681d4a5e35c688234f3cd9893e807ce9d912eb1c03"
    end
    on_intel do
      url "https://github.com/bugkill3r/aitop/releases/download/v#{version}/aitop-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "cefd79672216a38658b84ff1d62327954c67d7f340ef45ae2a62655847d19061"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bugkill3r/aitop/releases/download/v#{version}/aitop-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1230d0e8639e31ca0e81aef1dbcbdf63fbd25bdb8068fe3ca40cffabcd7a76b3"
    end
    on_intel do
      url "https://github.com/bugkill3r/aitop/releases/download/v#{version}/aitop-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4b69e9d5af64359939f5c2daac4c19b4d7438f7b8bf214e6d8d8c5394e8012fa"
    end
  end

  def install
    bin.install "aitop"
  end

  test do
    assert_match "aitop", shell_output("#{bin}/aitop --help")
  end
end
