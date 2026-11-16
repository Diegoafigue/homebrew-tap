# Homebrew tap de Diego Figueroa

Recetas de [Homebrew](https://brew.sh) para mis apps de barra de menú para macOS.

*Homebrew casks for my macOS menu bar apps.*

| App | Qué hace / What it does | Instalar / Install |
|---|---|---|
| [AllForMonitors](https://github.com/Diegoafigue/AllForMonitors-releases) | Brillo, contraste, volumen, color y entradas de cualquier monitor externo. / *Brightness, contrast, volume, color and inputs of any external monitor.* | `brew install --cask diegoafigue/tap/allformonitors` |
| [MouseSmith](https://github.com/Diegoafigue/MouseSmith-releases) | Scroll suave y botones a tu medida para cualquier mouse. / *Smooth scrolling and custom buttons for any mouse.* | `brew install --cask diegoafigue/tap/mousesmith` |

Las dos necesitan macOS 14 Sonoma o posterior y una Mac con Apple Silicon.
*Both need macOS 14 Sonoma or later and a Mac with Apple Silicon.*

## Actualizar / Update

Las apps se actualizan solas. Para hacerlo con Homebrew:
*The apps update themselves. To do it with Homebrew:*

```bash
brew upgrade --cask --greedy allformonitors mousesmith
```

## Desinstalar / Uninstall

```bash
brew uninstall --cask allformonitors
brew uninstall --cask mousesmith
```

Con `--zap` también se borran sus ajustes. / *Add `--zap` to remove their settings too.*
