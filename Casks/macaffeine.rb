cask "macaffeine" do
  version "1.0.0"
  sha256 "d3a03562612a0795e3e3efed2de6d8d54c1c5c70498aab70b196904a3e4d62ac"

  url "https://github.com/devopscodepro/macaffeine/releases/download/v#{version}/Macaffeine-#{version}.dmg"
  name "Macaffeine"
  desc "Menu bar app that keeps the Mac awake"
  homepage "https://macaffeine.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Macaffeine.app"
  binary "#{appdir}/Macaffeine.app/Contents/Resources/macaffeine"

  uninstall quit: "pro.devopscode.Macaffeine"

  zap trash: [
    "~/Library/Application Scripts/pro.devopscode.Macaffeine",
    "~/Library/Containers/pro.devopscode.Macaffeine",
  ]
end
