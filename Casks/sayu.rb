cask "sayu" do
  version "0.1.0"
  sha256 "74bbefdeb89f853d5eb8c62aabb12570cd94610eb1153e0a30856ff82c9087f2"

  url "https://github.com/ssakihara/sayu/releases/download/v#{version}/Sayu-#{version}.dmg"
  name "Sayu"
  desc "Menu bar app to switch JIS Eisu/Kana with left/right Command key taps"
  homepage "https://github.com/ssakihara/sayu"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Sayu.app"

  uninstall quit: "dev.ssakihara.Sayu"

  zap trash: "~/Library/Preferences/dev.ssakihara.Sayu.plist"
end
