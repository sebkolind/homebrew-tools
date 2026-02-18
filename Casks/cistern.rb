cask "cistern" do
  version "1.5"
  sha256 "ebd16bea020583cb5d680df5f92535c5e5e4a0f7937c04d34e2bcc241bcbbf68"

  url "https://github.com/atombender/cistern/releases/download/#{version}/cistern-release-#{version}.zip"
  name "Cistern"
  desc "CircleCI status app for macOS menu bar"
  homepage "https://github.com/atombender/cistern"

  depends_on macos: ">= :ventura"

  app "Cistern.app"

  zap trash: [
    "~/Library/Preferences/dev.atombender.Cistern.plist",
    "~/Library/Logs/Cistern",
  ]
end
