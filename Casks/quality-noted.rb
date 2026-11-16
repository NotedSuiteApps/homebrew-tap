cask "quality-noted" do
  version "27.1.1445"
  sha256 "2ad13002de36ea6c2539b6b0c087b428ad5078c8b4e4a4e7746c597079a7c30b"

  url "https://github.com/NotedSuiteApps/Quality.Noted/releases/download/v#{version}/Quality.Noted-#{version}.zip"
  name "Quality.Noted"
  desc "Release-readiness QA audits for apps, run by your own Claude Code"
  homepage "https://quality.notedsuite.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Quality.Noted.app"

  zap trash: [
    "~/Library/Application Support/QualityNoted",
    "~/Library/Caches/com.qualitynoted.app",
    "~/Library/Caches/QualityNoted",
    "~/Library/HTTPStorages/com.qualitynoted.app",
    "~/Library/HTTPStorages/com.qualitynoted.app.binarycookies",
    "~/Library/Preferences/com.qualitynoted.app.plist",
    "~/Library/Saved Application State/com.qualitynoted.app.savedState",
  ]
end
