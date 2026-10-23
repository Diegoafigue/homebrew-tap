cask "allformonitors" do
  version "0.9.0"
  sha256 "13674f0decbdc1dd0a5d205f4494bbbc8dae4cc17123601c06f534cd4cd29a83"

  url "https://github.com/Diegoafigue/AllForMonitors-releases/releases/download/v#{version}/AllForMonitors-#{version}.dmg"
  name "AllForMonitors"
  desc "Brightness, contrast, volume, color and inputs of external monitors from the menu bar"
  homepage "https://github.com/Diegoafigue/AllForMonitors-releases"

  livecheck do
    url "https://raw.githubusercontent.com/Diegoafigue/AllForMonitors-releases/main/appcast.xml"
    strategy :sparkle
  end

  # Sparkle updates the app; Homebrew only does it with --greedy.
  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "AllForMonitors.app"

  uninstall quit: "com.diego.AllForMonitors"

  zap trash: [
    "~/Library/Caches/com.diego.AllForMonitors",
    "~/Library/HTTPStorages/com.diego.AllForMonitors",
    "~/Library/Preferences/com.diego.AllForMonitors.plist",
  ]
end
