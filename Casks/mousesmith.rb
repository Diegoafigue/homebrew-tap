cask "mousesmith" do
  version "0.2.0"
  sha256 "0c7c74b94a6590440ecb521a07a295dc7136731ce78b3e4f1f074230bfa9d7bb"

  url "https://github.com/Diegoafigue/MouseSmith-releases/releases/download/v#{version}/MouseSmith-#{version}.dmg"
  name "MouseSmith"
  desc "Smooth scrolling and custom buttons for any mouse, from the menu bar"
  homepage "https://github.com/Diegoafigue/MouseSmith-releases"

  livecheck do
    url "https://raw.githubusercontent.com/Diegoafigue/MouseSmith-releases/main/appcast.xml"
    strategy :sparkle
  end

  # Sparkle updates the app; Homebrew only does it with --greedy.
  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "MouseSmith.app"

  uninstall quit: "com.diego.MouseSmith"

  zap trash: [
    "~/Library/Caches/com.diego.MouseSmith",
    "~/Library/HTTPStorages/com.diego.MouseSmith",
    "~/Library/Preferences/com.diego.MouseSmith.plist",
  ]
end
