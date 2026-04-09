cask "corner-monitor" do
  version "0.0.2"
  sha256 "0e72c4616f1dc0562ebf925046427c8eaf2509cfb068db131c340e4c93227b96"
  url "https://github.com/zonghow/corner-monitor/releases/download/v#{version}/Corner.Monitor_#{version}_aarch64.dmg"
  name "Corner Monitor"
  desc "A performance monitor placed in the corner of the screen."
  homepage "https://github.com/zonghow/corner-monitor"
  app "Corner Monitor.app"
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Corner Monitor.app"]
  end
  zap trash: [
    "~/Library/Application\ Support/io.github.zonghow.corner-monitor"
  ]
end
