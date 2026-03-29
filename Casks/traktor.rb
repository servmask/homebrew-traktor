cask "traktor" do
  version "1.7.0"
  sha256 "96b9e066af6815076c2bc8d8245016e8c2eb3bbc41df6f3f18957e0ebe50b8df"

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
