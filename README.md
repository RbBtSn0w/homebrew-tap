# RbBtSn0w Homebrew Tap

Homebrew tap for RbBtSn0w CLI formulae.

## Install

```bash
brew tap RbBtSn0w/tap
brew install gh-address-cr
brew install idocs
```

Upgrade and test installed formulae with:

```bash
brew update
brew upgrade gh-address-cr
brew test gh-address-cr
```

## Formulae

| Formula | Source project | Runtime source |
| --- | --- | --- |
| `gh-address-cr` | `RbBtSn0w/gh-address-cr` | PyPI sdist |
| `idocs` | `RbBtSn0w/Apple-iDocs` | PyPI sdist |

## Publisher Integration

Source repositories should update this tap only after their primary package
publish step succeeds. For Python CLI packages, the recommended flow is:

1. Publish the runtime package to PyPI.
2. Resolve the released PyPI sdist URL and SHA-256.
3. Render or update `Formula/<formula>.rb`.
4. Validate the formula on a macOS runner:

   ```bash
   brew update-python-resources --package-name <package> --version <version> RbBtSn0w/tap/<formula>
   brew audit --formula --strict RbBtSn0w/tap/<formula>
   brew install --build-from-source RbBtSn0w/tap/<formula>
   brew test RbBtSn0w/tap/<formula>
   ```

5. Commit the formula update to this repository.

## GitHub App Access

Automated publishers should use the shared release-bot GitHub App instead of a
long-lived personal access token.

The source repository workflow should mint a short-lived installation token:

```yaml
- name: Generate Homebrew tap token
  id: homebrew-tap-token
  uses: actions/create-github-app-token@v3
  with:
    app-id: ${{ vars.RELEASE_BOT_APP_ID }}
    private-key: ${{ secrets.RELEASE_BOT_PRIVATE_KEY }}
    owner: RbBtSn0w
    repositories: homebrew-tap
```

Then checkout this tap with that token:

```yaml
- name: Checkout Homebrew tap
  uses: actions/checkout@v4
  with:
    repository: RbBtSn0w/homebrew-tap
    token: ${{ steps.homebrew-tap-token.outputs.token }}
    path: homebrew-tap
```

Required configuration in each source repository:

| Name | Type | Purpose |
| --- | --- | --- |
| `RELEASE_BOT_APP_ID` | Actions variable | GitHub App identifier |
| `RELEASE_BOT_PRIVATE_KEY` | Actions secret | GitHub App private key |

Do not commit token values, private keys, or generated installation tokens to
this repository. Keep the GitHub App installed only on repositories it needs to
write, and grant the minimum required repository permission: `Contents: Read and
write`.
