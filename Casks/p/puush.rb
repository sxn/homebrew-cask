cask "puush" do
  version "66"
  sha256 :no_check

  url "https://puush.me/dl/puush.zip"
  name "puush"
  desc "Share screenshots"
  homepage "https://puush.me/"

  no_autobump! because: :requires_manual_review

  deprecate! date: "2024-04-11", because: :unmaintained
  disable! date: "2025-04-22", because: :unmaintained

  app "puush.app"
end
