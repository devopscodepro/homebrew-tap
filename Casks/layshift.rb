cask "layshift" do
  version "1.0.0"
  sha256 "7ba6462d720420353732211f9006bbfb73208c7f13e8bfd7a3f9bbcf10168202"

  url "https://github.com/devopscodepro/layshift/releases/download/v#{version}/LayShift-#{version}.dmg"
  name "LayShift"
  desc "Switch keyboard layouts with modifier-only shortcuts or a key per layout"
  homepage "https://github.com/devopscodepro/layshift"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "LayShift.app"

  uninstall quit: "pro.devopscode.LayShift"

  zap trash: "~/Library/Preferences/pro.devopscode.LayShift.plist"
end
