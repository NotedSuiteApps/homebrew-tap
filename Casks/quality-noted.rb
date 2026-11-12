cask "quality-noted" do
  version "27.1.1371"
  sha256 "55b4dfa4a7db37c11b9030021f2e52b97d7737926a06a6d553d2c06b68430154"

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
