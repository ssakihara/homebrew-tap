cask "snapdock" do
  version "0.3.0"
  sha256 "8a2e803c37d7562032a04df5c581b86cf34b1deaa8e2e093e605ea8d015da39e"

  url "https://github.com/ssakihara/snapdock/releases/download/v#{version}/SnapDock-#{version}.dmg"
  name "SnapDock"
  desc "Menu bar app to drag and drop your latest screenshots"
  homepage "https://github.com/ssakihara/snapdock"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "SnapDock.app"

  uninstall quit: "com.ssakihara.SnapDock"

  zap trash: "~/Library/Preferences/com.ssakihara.SnapDock.plist"
end
