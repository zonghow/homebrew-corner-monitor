cask "corner-monitor" do
  version "1.0.0"
  sha256 "1354a10839a9c3ae64a93acb6562c2b9cf9c3df5ff545a9ba16dc685833e48a3"
  url "https://github.com/zonghow/corner-monitor/releases/download/v#{version}/corner-monitor_#{version}_aarch64.dmg"
  name "Corner Monitor"
  desc "A performance monitor placed in the corner of the screen."
  homepage "https://github.com/zonghow/corner-monitor"
  app "corner-monitor.app"
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/corner-monitor.app"]
  end
  zap trash: [
    "~/Library/Application\ Support/io.github.zonghow.corner-monitor"
  ]
end