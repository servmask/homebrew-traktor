# homebrew-traktor

Homebrew tap for [Traktor](https://github.com/servmask/Qtraktor) — a cross-platform tool for extracting WordPress `.wpress` backup files.

## Install

```bash
brew tap servmask/traktor
brew install --cask traktor
```

## What you get

- **Traktor.app** in `/Applications`
- **`traktor`** CLI in your PATH (automatic via Homebrew)
- **MCP server** for AI agent integration

## After install

Register Traktor with your AI coding agents:

```bash
traktor mcp register
```

Check which agents are detected:

```bash
traktor mcp status
```

## Uninstall

```bash
traktor uninstall
brew uninstall traktor
```
