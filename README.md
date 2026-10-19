# hanzhangzzz Homebrew tap

```bash
brew trust hanzhangzzz/tap
brew install --cask hanzhangzzz/tap/native-task-router
```

| Cask | What it is |
| --- | --- |
| [native-task-router](https://github.com/hanzhangzzz/native-task-router) | Hotkey, one sentence, land in the right Claude Code / Codex session in your own terminal (macOS, Apple silicon) |

Homebrew refuses to load casks from third-party taps until you trust them, hence `brew trust` first.

The app is signed with a self-signed certificate and is not notarized, so macOS blocks the first launch: open System Settings → Privacy & Security and click "Open Anyway" once.

Cask files are updated by the product repo's release script.
