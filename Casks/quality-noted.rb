cask "quality-noted" do
  version "27.1.790"
  sha256 "90025c8207bde87752f2c2c9f1bd21a442282ac6e3191854ebdd1bbf1533013f"

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
