cask "cistern" do
  version "1.5"
  sha256 "142e95441db9d54b849f705bebb5503dc02909c7e8b402c27ce6e88ce0d73df1"

  url "https://github.com/atombender/cistern/releases/download/release-#{version}/Cistern.zip"
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
