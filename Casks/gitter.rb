cask "gitter" do
  version "1.177"
  sha256 "0ca1c0d52c342548afbea8d3501282a4ccf494058aa2e23af27e09198a7a30a4"

  url "https://update.gitter.im/osx/Gitter-#{version}.dmg"
  name "Gitter"
  homepage "https://gitter.im/"

  livecheck do
    url "https://update.gitter.im/osx/appcast.xml"
    strategy :sparkle
  end

  app "Gitter.app"

  uninstall quit: [
    "com.troupe.gitter.mac.Gitter",
    "com.troupe.gitter.mac.GitterHelperApp",
  ]

  zap trash: [
    "~/Library/Application Support/Gitter",
    "~/Library/Caches/com.troupe.gitter.mac.Gitter",
    "~/Library/Preferences/com.troupe.gitter.mac.Gitter.plist",
    "~/Library/Saved Application State/com.troupe.gitter.mac.Gitter.savedState",
  ]
end
