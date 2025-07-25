cask "osculator" do
  version "3.4.3-11-g8d8b1d0c,9c7ed436-cd8e-4c4f-bc69-29b56674467f"
  sha256 "29e226f1a9d6cdfa8bf94f56ae91cd58399674a9463f8fb1bbcd8c875244378b"

  url "https://distribution.wildora.net/products/osculator-v#{version.major}/revisions/#{version.csv.second}/osculator-#{version.csv.first}.dmg",
      verified: "distribution.wildora.net/products/"
  name "Osculator"
  desc "Connect MIDI and OSC Controllers"
  homepage "https://osculator.net/"

  no_autobump! because: :requires_manual_review

  disable! date: "2024-12-31", because: :discontinued

  app "Osculator.app"

  zap trash: [
    "~/Library/Application Support/net.osculator.OSCulator",
    "~/Library/Caches/net.osculator.OSCulator",
    "~/Library/Preferences/net.osculator.OSCulator.plist",
  ]

  caveats do
    requires_rosetta
  end
end
