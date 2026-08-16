# System config file stuff

Mostly macOS configuration rc files and such.

## Set up and simlink the config folders

```shell
cd
git clone git@github.com:jerukan/dotfiles.git
cd ~/.config
ln -s ~/dotfiles/yabai yabai
ln -s ~/dotfiles/skhd skhd
ln -s ~/dotfiles/sketchybar sketchybar
ln -s ~/dotfiles/borders borders
```

## Installing the main software

[yabai](https://github.com/asmvik/yabai):

```shell
brew install asmvik/formulae/yabai
```

[skhd](https://github.com/asmvik/skhd):
```shell
brew install asmvik/formulae/skhd
```

[SketchyBar](https://github.com/felixkratz/sketchybar):

```shell
brew tap FelixKratz/formulae
brew install sketchybar
```

[JankyBorders](https://github.com/FelixKratz/JankyBorders):

```shell
brew tap FelixKratz/formulae
brew install borders
```

## Other dependencies besides services

Dependency reminders:
1. [nowplaying-cli](https://github.com/kirtan-shah/nowplaying-cli)
2. Hacker Nerd Font
3. [sketchybar-app-font](https://github.com/kvndrsslr/sketchybar-app-font)

The actual installation commands:

Install nowplaying-cli:

```shell
brew install nowplaying-cli
```

Install Hacker Nerd Font

```shell
brew install --cask font-hack-nerd-font
```

Install sketchybar-app-font:

```shell
git clone git@github.com:kvndrsslr/sketchybar-app-font.git
pnpm install
pnpm run build:install
```

If pnpm is not installed:

```shell
curl -fsSL https://get.pnpm.io/install.sh | sh -
source ~/.zshrc
```

## Running things reminders

yabai

```shell
yabai --start-service
yabai --restart-service
yabai --stop-service
```

skhd

```shell
skhd --start-service
skhd --restart-service
skhd --stop-service
```

sketchybar

```shell
brew services start sketchybar
sketchybar --reload
```

JankyBorders

```shell
brew services start borders
```
