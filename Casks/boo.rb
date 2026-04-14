cask "boo" do
  version "0.2.0"
  sha256 "d1c6b342ddfa6fcb8213784fe4b5b2d6f57e2a660f98891afa64d5b3f133f1a0"

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
