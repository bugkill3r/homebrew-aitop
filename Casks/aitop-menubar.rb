cask "aitop-menubar" do
  version "0.6.3"
  sha256 "4a440017c044e2139e1836d41f10a8167144a8c6c128ef8740f146a289c16401"

  url "https://github.com/bugkill3r/aitop/releases/download/v#{version}/AitopMenuBar-v#{version}.zip"
  name "AitopMenuBar"
  desc "Menu bar companion for aitop — AI spend at a glance"
  homepage "https://github.com/bugkill3r/aitop"

  app "AitopMenuBar.app"

  zap trash: [
    "~/Library/Preferences/com.bugkill3r.aitop-menubar.plist",
  ]
end
