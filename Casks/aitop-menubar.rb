cask "aitop-menubar" do
  version "0.6.3"
  sha256 "e2830e03031d648003641a2f4a67923f1f704ec3c9bb5097b262edbf1b7358e1"

  url "https://github.com/bugkill3r/aitop/releases/download/v#{version}/AitopMenuBar-v#{version}.zip"
  name "AitopMenuBar"
  desc "Menu bar companion for aitop — AI spend at a glance"
  homepage "https://github.com/bugkill3r/aitop"

  app "AitopMenuBar.app"

  zap trash: [
    "~/Library/Preferences/com.bugkill3r.aitop-menubar.plist",
  ]
end
