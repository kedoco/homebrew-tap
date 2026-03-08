# Homebrew Tap

Homebrew formulae for [nix-pipe-tools](https://github.com/kedoco/nix-pipe-tools) — small, composable Unix utilities for macOS and Linux.

## Install

```bash
# Add the tap
brew tap kedoco/tap

# Install individual tools
brew install kedoco/tap/memo    # Content-addressed command memoization
brew install kedoco/tap/tap     # Pipeline stage debugger / named snapshot capture
brew install kedoco/tap/prv     # File provenance tracker via syscall tracing or shell hooks
brew install kedoco/tap/cel     # Universal tabular text column extractor
brew install kedoco/tap/when    # Timestamp converter and time arithmetic
brew install kedoco/tap/has     # Find what process has a file or port open
```

Once tapped, you can also install by name:

```bash
brew install memo cel when has
```

## Quick examples

```bash
# Cache a slow command — second run is instant
memo curl -s https://api.example.com/data

# Snapshot pipeline stages for debugging
cat data.csv | tap -n raw | sort -k2 | tap -n sorted | head -20

# Extract columns from any tabular text
docker ps | cel name,status
ps aux | cel pid,command -w '%cpu > 5.0'

# Find what process has a file or port open
has :8080                        # what's using port 8080?
has ./data.db                    # what has this file open?

# Convert timestamps and do time math
when 1709740800                  # epoch → 2024-03-06T16:00:00Z
when now + 90d -o "%Y-%m-%d"    # 90 days from now
when 2024-12-25 - now            # duration until date
```

## Update

```bash
brew update
brew upgrade kedoco/tap/memo  # or any individual tool
```

Formulas are updated automatically when new releases are published.
