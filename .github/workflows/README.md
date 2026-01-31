# Homebrew Formula Auto-Update

This repository contains a GitHub Action that automatically updates the powerctl-cli Homebrew formula when new releases are published.

## How it Works

The `update-formula.yml` workflow can be triggered in two ways:

### 1. Automatic Updates (via repository_dispatch)

To automatically update the formula when you publish a new release in the powerctl-cli repository, add this workflow to your `.github/workflows/` directory in the [powerctl-cli](https://github.com/KristofferRisa/powerctl-cli) repository:

```yaml
name: Update Homebrew Formula

on:
  release:
    types: [published]

jobs:
  update-homebrew:
    runs-on: ubuntu-latest
    steps:
      - name: Trigger Homebrew formula update
        run: |
          VERSION="${{ github.event.release.tag_name }}"
          VERSION="${VERSION#v}"  # Remove 'v' prefix if present

          curl -L \
            -X POST \
            -H "Accept: application/vnd.github+json" \
            -H "Authorization: Bearer ${{ secrets.HOMEBREW_TAP_TOKEN }}" \
            -H "X-GitHub-Api-Version: 2022-11-28" \
            https://api.github.com/repos/KristofferRisa/homebrew-powerctl/dispatches \
            -d "{\"event_type\":\"release-published\",\"client_payload\":{\"version\":\"${VERSION}\"}}"
```

**Setup Required:**
1. Create a Personal Access Token (PAT) with `repo` scope
2. Add it as a secret named `HOMEBREW_TAP_TOKEN` in your powerctl-cli repository settings
3. The token needs write access to the homebrew-powerctl repository

### 2. Manual Updates (via workflow_dispatch)

You can manually trigger an update from the Actions tab:

1. Go to the [Actions tab](../../actions/workflows/update-formula.yml)
2. Click "Run workflow"
3. Enter the version number (e.g., `0.2.1` without the 'v' prefix)
4. Click "Run workflow"

## What the Workflow Does

1. Downloads release artifacts for all supported platforms (darwin/linux, amd64/arm64)
2. Calculates SHA256 checksums for each artifact
3. Updates the `Formula/powerctl-cli.rb` file with the new version and checksums
4. Commits and pushes the changes to the main branch

## Testing

To test the workflow with the latest release (v0.2.1):

```bash
# Trigger manually via GitHub CLI
gh workflow run update-formula.yml -f version=0.2.1
```

Or use the GitHub web interface as described in the Manual Updates section above.
