cask "traktor" do
  version "1.11.1"
  sha256 "10a3e39b2f7c289cf6129def330ae53707e90ccd87ab74dce32ca61ffcc24bfc"

  url "https://github.com/servmask/Qtraktor/releases/download/v#{version}/Traktor-v#{version}.pkg"
  name "Traktor"
  desc "Extract WordPress .wpress backup files with CLI and MCP server"
  homepage "https://github.com/servmask/Qtraktor"

  pkg "Traktor-v#{version}.pkg"

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
