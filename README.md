# Homebrew tap for Ohmyherdr

Apple Silicon macOS distribution of [Ohmyherdr](https://github.com/chengyixu/oh-my-herdr).
The formula installs the checksum-verified native **Ohmyherdr product build** from
its tagged GitHub release. It does not install the upstream `herdr` product.

```sh
brew tap chengyixu/ohmyherdr
brew install ohmyherdr
```

If your Homebrew version asks for explicit tap trust, grant only this formula:

```sh
brew trust --formula chengyixu/ohmyherdr/ohmyherdr
```

Upgrade a Homebrew installation with:

```sh
brew update
brew upgrade ohmyherdr
```

Check both the installed client and running server with `ohmyherdr status`.
Closing a client window may only detach it. When ready to activate the installed
native server while preserving panes, run `ohmyherdr server live-handoff` from an
ordinary terminal. Live handoff remains experimental.

Release 0.9.10 qualifies managed Pi, Codex and Claude switching in both directions,
with recorded history kept separate from active compacted context. Existing
Claude/Codex processes that never inherited the editor service require one managed
resume of the exact session. Native authentication must work in the selected CLI.
See the product release notes for qualification limits; another activated menu
entry is not evidence of a qualified switch source.

Only macOS arm64 is supported by this formula. Its native version check requires
`ohmyherdr <version>-ohmyherdr.<version>` so an upstream or incorrectly branded
artifact cannot pass the formula test.
