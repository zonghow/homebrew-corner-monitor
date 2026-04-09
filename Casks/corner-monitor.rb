cask "corner-monitor" do
  version "0.0.3"
  sha256 "f791eb63bf7eac88ac3dc7dcd35eda490547557436809062e10002236ea4d534"
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
