cask "aitop-menubar" do
  version "0.6.4"
  sha256 "621c8ad46e8ae7f6b6d65ac6efe9a8b9a480d60609d12da47e5433bb2788d977"

  url "https://github.com/bugkill3r/aitop/releases/download/v#{version}/AitopMenuBar-v#{version}.zip"
  name "AitopMenuBar"
  desc "Menu bar companion for aitop — AI spend at a glance"
  homepage "https://github.com/bugkill3r/aitop"

  app "AitopMenuBar.app"

  zap trash: [
    "~/Library/Preferences/com.bugkill3r.aitop-menubar.plist",
  ]
end
