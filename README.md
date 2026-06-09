# homebrew-steamie

A [Homebrew](https://brew.sh) tap for [**steamie**](https://github.com/LargeModGames/steamie) —
a terminal-native Steam client written in Rust.

## Install

```bash
brew install LargeModGames/steamie/steamie
```

(equivalently: `brew tap LargeModGames/steamie && brew install steamie`)

## Notes

`Formula/steamie.rb` is generated and updated **automatically** by the steamie
release pipeline (`.github/workflows/cd.yml`) on each tagged release — please do
not edit it by hand; manual changes will be overwritten.
