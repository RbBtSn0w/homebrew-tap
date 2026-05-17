# RbBtSn0w Homebrew Tap

Homebrew tap for RbBtSn0w CLI formulae.

## Install

```bash
brew tap RbBtSn0w/tap
brew install gh-address-cr
brew install idocs
```

Upgrade an installed formula with:

```bash
brew update
brew upgrade <formula>
```

## Publisher Integration

Repositories that publish formula updates to this tap need these Actions
settings:

| Name | Type | Purpose |
| --- | --- | --- |
| `RELEASE_BOT_APP_ID` | Actions variable | GitHub App identifier |
| `RELEASE_BOT_PRIVATE_KEY` | Actions secret | GitHub App private key |

Do not commit token values, private keys, or generated installation tokens.
