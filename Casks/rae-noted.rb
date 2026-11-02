cask "rae-noted" do
  version "27.1.11"
  sha256 "3845dfd5bc62235e56adada59dd78afe97771b768028efae93261795cad186f4"

  url "https://github.com/NotedSuiteApps/Rae.Noted/releases/download/v#{version}/Rae.Noted-#{version}.zip"
  name "Rae.Noted"
  desc "Wi-Fi scanner for home and office troubleshooting"
  homepage "https://github.com/NotedSuiteApps/Rae.Noted"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "Rae.Noted.app"

  uninstall quit: "com.damionbyrd.netnoted"

  zap trash: [
    "~/Library/Preferences/com.damionbyrd.netnoted.plist",
    "~/Library/Saved Application State/com.damionbyrd.netnoted.savedState",
  ]
end
