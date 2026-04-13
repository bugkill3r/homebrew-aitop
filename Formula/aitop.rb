class Aitop < Formula
  desc "btop for AI — terminal dashboard for token usage and costs"
  homepage "https://github.com/bugkill3r/aitop"
  version "0.6.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bugkill3r/aitop/releases/download/v#{version}/aitop-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "4e80d1b2b99fa0274b8e2b42a58bba1fc4b2c7a33e2fa5009ba17bd95ff42a4a"
    end
    on_intel do
      url "https://github.com/bugkill3r/aitop/releases/download/v#{version}/aitop-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "7329ae9e761d1f9b0750bc207ab77f4b3d6b2c0c8309d77fb9970ba0593411bb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bugkill3r/aitop/releases/download/v#{version}/aitop-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1518ad329a13354d730b0c42b8e0c3b0d60202af153805ea5d37f241c2ab5623"
    end
    on_intel do
      url "https://github.com/bugkill3r/aitop/releases/download/v#{version}/aitop-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e396f99e1113f2881d0f5d13cb0a89e81cac2a37befdbd304c16614eea58e91b"
    end
  end

  def install
    bin.install "aitop"
  end

  test do
    assert_match "aitop", shell_output("#{bin}/aitop --help")
  end
end
