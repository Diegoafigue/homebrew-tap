cask "allformonitors" do
  version "0.9.1"
  sha256 "b910963df67f0ae361b581436293af0aa3451342c7786d4089f6bda684590f52"

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
