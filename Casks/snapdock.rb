cask "snapdock" do
  version "0.2.0"
  sha256 "138e01f2f6023bf1e0509fbc4a02f03aa8fc4d8bf52b08bb24d9c9250d38c779"

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
