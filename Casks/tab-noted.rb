cask "tab-noted" do
  version "27.1.116"
  sha256 "3bf4102bc7d25f04e80c04834edba26d284d4109e28740a6b41e9ae0829f3766"

  url "https://github.com/NotedSuiteApps/Tab.Noted/releases/download/v#{version}/Tab.Noted-#{version}.dmg"
  name "Tab.Noted"
  desc "Native source code and text editor"
  homepage "https://tab.notedsuite.app/"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Tab.Noted.app"

  zap trash: [
    "~/Library/Application Support/TabNoted",
    "~/Library/Preferences/com.notedsuite.tabnoted.plist",
  ]
end
