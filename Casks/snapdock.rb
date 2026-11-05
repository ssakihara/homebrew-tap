cask "snapdock" do
  version "0.4.0"
  sha256 "59fa31e9d8db590a33c5d803a03340832821a9ab70bbb82e352998602ef4ba96"

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
