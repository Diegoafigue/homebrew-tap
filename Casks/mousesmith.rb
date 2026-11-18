cask "mousesmith" do
  version "0.2.1"
  sha256 "37933c99acd0b20f439d4a3c76567653b799b6bf9835f0ba1c0727cfe90a493f"

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
