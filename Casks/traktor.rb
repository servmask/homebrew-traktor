cask "traktor" do
  version "1.8.0"
  sha256 "8f667439e463255c055ace40763d6e64b78bfa19936e16cd7700acfb4311f7c5"

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
