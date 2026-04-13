cask "aitop-menubar" do
  version "0.6.7"
  sha256 "6896b5cf8a15a4d742c8b6f0c3108d919720684d7f5c3c5a39a2eb854e226e9a"

  url "https://github.com/bugkill3r/aitop/releases/download/v#{version}/AitopMenuBar-v#{version}.zip"
  name "AitopMenuBar"
  desc "Menu bar companion for aitop — AI spend at a glance"
  homepage "https://github.com/bugkill3r/aitop"

  app "AitopMenuBar.app"

  zap trash: [
    "~/Library/Preferences/com.bugkill3r.aitop-menubar.plist",
  ]
end
