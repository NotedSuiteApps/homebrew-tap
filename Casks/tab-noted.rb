cask "tab-noted" do
  version "27.2.119"
  sha256 "4f58bd6ebf597b26db2504542ba19d44437332795150f60b7b9707107d448188"

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
    "~/Library/Caches/com.notedsuite.tabnoted",
    "~/Library/HTTPStorages/com.notedsuite.tabnoted",
    "~/Library/HTTPStorages/com.notedsuite.tabnoted.binarycookies",
    "~/Library/Preferences/com.notedsuite.tabnoted.plist",
    "~/Library/Saved Application State/com.notedsuite.tabnoted.savedState",
    "~/Library/WebKit/com.notedsuite.tabnoted",
  ]
end
