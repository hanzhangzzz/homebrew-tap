cask "native-task-router" do
  version "0.3.0"
  sha256 "3b9efcec40808c0ce7a114388cde31b2834413e17b587f671c70e1f172db8eda"

  url "https://github.com/hanzhangzzz/native-task-router/releases/download/v#{version}/Native-Task-Router-#{version}-arm64.dmg"
  name "Native Task Router"
  desc "Hotkey, one sentence, land in the right Claude Code / Codex session in your terminal"
  homepage "https://github.com/hanzhangzzz/native-task-router"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "Native Task Router.app"

  caveats <<~EOS
    The app is signed with a self-signed certificate and is not notarized, so macOS
    blocks the first launch unless you installed with --no-quarantine:

      brew install --cask --no-quarantine hanzhangzzz/tap/native-task-router

    Otherwise open System Settings → Privacy & Security and click "Open Anyway".
    It needs iTerm2 or Terminal, plus a logged-in `claude` CLI.
  EOS

  zap trash: [
    "~/.ntr",
    "~/Library/Application Support/native-task-router",
    "~/Library/Preferences/dev.nativetaskrouter.app.plist",
  ]
end
