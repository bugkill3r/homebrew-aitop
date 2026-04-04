cask "aitop-menubar" do
  version "0.6.5"
  sha256 "1e53020393f2c5aeefa35f5ce6a3aad24e50cb5a9c3711bd22329a84b9e0f323"

  url "https://github.com/bugkill3r/aitop/releases/download/v#{version}/AitopMenuBar-v#{version}.zip"
  name "AitopMenuBar"
  desc "Menu bar companion for aitop — AI spend at a glance"
  homepage "https://github.com/bugkill3r/aitop"

  app "AitopMenuBar.app"

  zap trash: [
    "~/Library/Preferences/com.bugkill3r.aitop-menubar.plist",
  ]
end
