cask "boo" do
  version "0.2.0"
  sha256 "e58344ca67a0b9b26db91d056aedbb93dc59afbb398f3789fec4bd543ef9eba2"

  url "https://github.com/dmallory42/boo/releases/download/v#{version}/Boo-macOS.zip"
  name "Boo"
  desc "Menu bar companion for Ghostty — project-first session browsing and global hotkey switcher"
  homepage "https://github.com/dmallory42/boo"

  depends_on macos: ">= :sonoma"

  app "Boo.app"

  zap trash: [
    "~/Library/Application Support/Boo",
  ]
end
