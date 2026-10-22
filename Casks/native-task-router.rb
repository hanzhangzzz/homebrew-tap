cask "native-task-router" do
  version "0.9.0"
  sha256 "d4f2859c703067fab034ca2275913f9a443f779ad1e3f48715b9c830b2712def"

  url "https://github.com/hanzhangzzz/native-task-router/releases/download/v#{version}/Native-Task-Router-#{version}-arm64.dmg"
  name "Native Task Router"
  desc "Send one sentence to the right Claude Code or Codex session in your terminal"
  homepage "https://github.com/hanzhangzzz/native-task-router"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Native Task Router.app"

  zap trash: [
    "~/.ntr",
    "~/Library/Application Support/native-task-router",
    "~/Library/Preferences/dev.nativetaskrouter.app.plist",
  ]

  caveats <<~EOS
    The app is signed with a self-signed certificate and is not notarized, so macOS
    blocks the first launch: open System Settings → Privacy & Security and click
    "Open Anyway" once.

    Homebrew only loads casks from taps you trust. If you have not done so yet:

      brew trust hanzhangzzz/tap

    It needs a logged-in `claude` CLI and a supported terminal (see the README).
  EOS
end
