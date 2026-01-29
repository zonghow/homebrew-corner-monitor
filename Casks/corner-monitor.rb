cask "corner-monitor" do
  version "0.0.2"
  sha256 "bf6f546f2b0a27885593d9effbaf4a29c9f1768861fcd8e7243a71764576b8cf"
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