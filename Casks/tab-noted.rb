cask "tab-noted" do
  version "27.2.117"
  sha256 "dd2eed86304ea60cb511ddfe2478a42480dc8fda2a53becc90ce5dd103935d07"

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
