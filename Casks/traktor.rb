cask "traktor" do
  version "1.12.0"
  sha256 "5b7ad46a53ffccada853304e36013571bd65a3eeba593b2b3630043ecb8788c1"

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
