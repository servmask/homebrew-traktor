cask "traktor" do
  version "1.8.0"
  sha256 "4231a9fb72ada63ddf518cfec39c619ad23b99a51b65055e97b42964bdffb54b"

  url "https://github.com/servmask/Qtraktor/releases/download/v#\{version\}/Traktor-v#\{version\}.pkg"
  name "Traktor"
  desc "Extract WordPress .wpress backup files with CLI and MCP server"
  homepage "https://github.com/servmask/Qtraktor"

  pkg "Traktor-v#\{version\}.pkg"

  caveats <<~EOS
    To register Traktor with your AI coding agents (Claude Code, Gemini CLI):
      traktor mcp register

    To check which agents are detected:
      traktor mcp status

    To uninstall completely:
      traktor uninstall
      brew uninstall traktor
  EOS

  uninstall pkgutil: "com.servmask.traktor",
delete:  [
  "/Applications/Traktor.app",
  "/usr/local/bin/traktor",
]

  zap trash: [
    "~/Library/Preferences/com.servmask.Traktor.plist",
  ]
end
