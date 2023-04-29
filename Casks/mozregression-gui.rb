cask "mozregression-gui" do
  version "5.3.2"
  sha256 "a1aa7f8c50d3511d2d326d32afa5c2bdac5b5787269ef315674d2f3b38462936"

  url "https://github.com/mozilla/mozregression/releases/download/#{version}/mozregression-gui.dmg",
      verified: "github.com/mozilla/mozregression/"
  name "mozregression GUI"
  desc "Interactive regression rangefinder for Mozilla applications"
  homepage "https://mozilla.github.io/mozregression/"

  app "mozregression GUI.app"

  zap trash: [
    "~/Library/Preferences/org.mozilla.mozregression-gui.plist",
    "~/.mozilla/mozregression",
  ]
end
