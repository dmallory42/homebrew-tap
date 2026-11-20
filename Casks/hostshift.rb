cask "hostshift" do
  version "1.2.0"
  sha256 "1f5e71db92cc6dd04f8a28656e88f763f20fa2e9c8057f0e5cd3e14715c22452"

  url "https://github.com/dmallory42/hostshift/releases/download/v#{version}/Hostshift-#{version}.dmg"
  name "Hostshift"
  desc "Switch /etc/hosts between saved profiles"
  homepage "https://github.com/dmallory42/hostshift"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Hostshift.app"
  binary "#{appdir}/Hostshift.app/Contents/MacOS/Hostshift", target: "hostshift"

  zap trash: [
    "~/Library/Application Support/Hostshift",
    "~/Library/Preferences/dev.dmallory.hostshift.plist",
  ]

  caveats <<~EOS
    Open Hostshift once and choose Enable System Access before activating profiles.
    Before uninstalling, choose Settings → Disable System Access in Hostshift.
  EOS
end
