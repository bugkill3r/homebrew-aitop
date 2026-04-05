cask "aitop-menubar" do
  version "0.6.6"
  sha256 "1b0a29f27cd8ac4435302dac6466d34a5cf78db0e8fb8f618369da78824276e3"

  url "https://github.com/bugkill3r/aitop/releases/download/v#{version}/AitopMenuBar-v#{version}.zip"
  name "AitopMenuBar"
  desc "Menu bar companion for aitop — AI spend at a glance"
  homepage "https://github.com/bugkill3r/aitop"

  app "AitopMenuBar.app"

  zap trash: [
    "~/Library/Preferences/com.bugkill3r.aitop-menubar.plist",
  ]
end
