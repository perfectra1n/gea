# gea has moved

`gea`, the command-line interface for [Gitea](https://about.gitea.com), now lives in the [fjo repository](https://github.com/perfectra1n/fjo), in the [`gea/`](https://github.com/perfectra1n/fjo/tree/main/gea) directory, next to `fjo`, its sibling for Forgejo.

It is still a separate tool, with the same name, the same commands, its own releases and the same container image. Only the repository changed.

| | Where it is now |
|---|---|
| Source and documentation | <https://github.com/perfectra1n/fjo/tree/main/gea> |
| Issues and pull requests | <https://github.com/perfectra1n/fjo/issues> |
| Releases from v0.2.3 on | <https://github.com/perfectra1n/fjo/releases?q=gea-v> (tagged `gea-vX.Y.Z`) |
| Releases up to v0.2.2 | [this repository](https://github.com/perfectra1n/gea/releases) |
| Container image | `ghcr.io/perfectra1n/gea` (unchanged) |

## Install

```bash
curl -fsSL https://raw.githubusercontent.com/perfectra1n/fjo/main/gea/install.sh | sh
```

```powershell
irm https://raw.githubusercontent.com/perfectra1n/fjo/main/gea/install.ps1 | iex
```

The old install commands, which point at this repository, keep working: the scripts here run the ones above.

## History

This repository's full git history was carried over, under `gea/`. The code here is a snapshot of v0.2.2 and is no longer updated.
