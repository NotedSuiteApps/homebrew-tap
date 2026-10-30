cask "quality-noted" do
  version "27.1.1178"
  sha256 "e921c6a3e740c6cd0eaa0d880f1ded0741f1ef3c80f980eb9c0d46b12fd921d2"

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
  depends_on macos: :sonoma

  app "Quality.Noted.app"

  zap trash: [
    "~/Library/Application Support/QualityNoted",
    "~/Library/Caches/com.qualitynoted.app",
    "~/Library/HTTPStorages/com.qualitynoted.app",
    "~/Library/Preferences/com.qualitynoted.app.plist",
  ]
end
