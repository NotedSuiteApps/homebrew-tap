cask "rae-noted" do
  version "27.1.12"
  sha256 "97351732e434013ba012ab1dab9ea005db46a567ecfbd617bdf9e4835490915c"

  url "https://github.com/NotedSuiteApps/Rae.Noted/releases/download/v#{version}/Rae.Noted-#{version}.zip"
  name "Rae.Noted"
  desc "Wi-Fi analyzer for home and office troubleshooting"
  homepage "https://rae.notedsuite.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "Rae.Noted.app"

  uninstall quit: "com.notedsuite.raenoted"

  zap trash: [
    "~/Library/Preferences/com.notedsuite.raenoted.plist",
    "~/Library/Saved Application State/com.notedsuite.raenoted.savedState",
  ]
end
