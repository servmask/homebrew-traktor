cask "traktor" do
  version "1.6.0"
  sha256 :no_check

  url "https://github.com/servmask/Qtraktor/releases/download/v#{version}/Traktor-v#{version}.pkg"
  name "Traktor"
  desc "Extract WordPress .wpress backup files with CLI and MCP server"
  homepage "https://github.com/servmask/Qtraktor"

  pkg "Traktor-v#{version}.pkg"

  postflight do
    ohai "To register Traktor with your AI coding agents, run:"
    ohai "  traktor mcp register"
  end

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
            delete:  "/usr/local/bin/traktor"

  zap trash: [
    "~/Library/Preferences/com.servmask.Traktor.plist",
  ]
end
