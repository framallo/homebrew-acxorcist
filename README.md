# homebrew-acxorcist

Homebrew tap for [`acxorcist`](https://github.com/framallo/acxorcist) —
batch-convert MP3s into ACX-compliant audiobook files with one command.

```sh
brew install framallo/acxorcist/acxorcist
```

Or tap first, then install:

```sh
brew tap framallo/acxorcist
brew install acxorcist
```

Upgrade with `brew upgrade acxorcist`. As of v0.2.0 the formula installs a
**self-contained Rust binary** — no `ffmpeg` or other external dependency.
