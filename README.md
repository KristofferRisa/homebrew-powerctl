# homebrew-powerctl

Homebrew tap for [powerctl-cli](https://github.com/KristofferRisa/powerctl-cli) - a CLI tool for monitoring electricity consumption and tracking power costs via Tibber.

## Installation

Tap this repository:
```bash
brew tap kristofferrisa/powerctl
```

Install the cask (v0.4.0+):
```bash
brew install --cask powerctl
```

Or in one command:
```bash
brew install --cask kristofferrisa/powerctl/powerctl
```

Still on the old `powerctl-cli` formula? Replace it with:
```bash
brew uninstall powerctl-cli && brew install --cask kristofferrisa/powerctl/powerctl
```

## Usage

After installation, use the `powerctl` command:
```bash
powerctl --help
```

## About powerctl-cli

powerctl-cli provides:
- Real-time power consumption monitoring from Tibber Pulse devices
- Current, today's, and tomorrow's electricity prices
- Multi-home management for Tibber users
- Colored CLI output with JSON/Markdown export options
- Cross-platform support (Linux, macOS, Windows)

For more information, see the [powerctl-cli repository](https://github.com/KristofferRisa/powerctl-cli).
