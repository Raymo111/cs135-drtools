# CS 135 DrTools
DrRacket Tools for CS 135 course at UWaterloo

## Disclaimers
- **The authors are NOT responsible for any issues using any part of this repository will cause you. ALWAYS back up your files, preferences and code!**
- **Though it may not be necessary in all cases, DrRacket should be restarted after most customizations to allow all changes to take effect.**

## Acknowledgements
- Autocomplete was adapted from *complete-word* in [Quickscript Extra](https://github.com/Metaxal/quickscript-extra)
- Keybindings was adapted from [Racket-lang.org](https://docs.racket-lang.org/drracket/Keyboard_Shortcuts.html#%28part._defining-shortcuts%29) documentation

### Contributors
- Creator and Maintainer: [Raymond Li](https://github.com/Raymo111)
- Co-creator and Maintainer: [Kaustubh Prabhakar](https://github.com/SantaKaus) 
- Contributor: [Thomas Park](https://github.com/ThomasPark20)

## Autocomplete
### Features:
- Completion for the following:

| Shortcut | Long form            |
|----------|----------------------|
| cx       | check-expect         |
| cw       | check-within         |
| ce       | check-error          |
| df       | define function      |
| d        | define               |
| t        | true                 |
| f        | false                |
| hdr      | file header          |
| cmt      | comment              |
| l;       | `;;   `              |
| ppe      | Purpose and examples |
| ctr      | Contract             |
| req      | Requires             |
| tst      | Tests                |
| lox      | List-of-X Template   |

- `Ctrl+Space` trigger

### Installation
You can optionally install the `drcomplete` raco package for automated code-completion (i.e. you won't have to `Ctrl+/` all the time.) To do this, go to `File > Package Manager...`, make sure you're on the `Do What I Mean` tab, put `drcomplete` in the input field beside `Package Source:`, and click `Install` at the bottom right of the window. Restart DrRacket, then go to `Edit > Enable Automatic Autocompletion` (last item) in the menubar (if it's not already enabled).
1. Go to `File > Package Manager...` from the menubar.
2. Make sure you're on the `Do What I Mean` tab, put `cs135-drtools` in the input field beside `Package Source:`, and click `Install` at the bottom right of the window.
4. Restart DrRacket.

### Usage:
1. Type a shortcut
2. Press `Ctrl+Space`
3. The shortcut will be replace with the long form

## Keybindings
### Features
- Current custom keybindings that I'm used to and have implemented are:

| Keybinding     | What it does                                      | DrRacket default |
|----------------|---------------------------------------------------|------------------|
| Alt+R          | Run the program                                   | Ctrl+R or F5     |
| Ctrl+Shift+F   | Indent all lines                                  | Ctrl+I           |
| Ctrl+H         | Show Replace                                      | Ctrl+Shift+R     |
| Ctrl+Shift+R   | Replace All                                       | *None*           |
| Ctrl+/         | Comment out line with `;`                         | *None*           |
| Ctrl+Backspace | Delete word left of cursor                        | Alt+Backspace    |
| Ctrl+Delete    | Delete word right of cursor                       | Alt+Delete       |
| Ctrl+Up/Down   | Switch between Interactions and Definitions panes | Ctrl+F6          |
<!--
| Up             | Previous command in Interactions panes            | Ctrl+up          |
| Down           | Next command in Interactions panes                | Ctrl+down        |
-->

### Installation
Same as autocomplete.

<!--
### Known issues
Up/Down messes up multi-line inputs in the interactions window. I've chosen to leave this in because multiline interactions input that needs to be edited is uncommon and can simply be navigated via a mouse or Ctrl+Left/Right, whereas the terminal/shell/console-like up for previous command is used more often. Users that are unused to this or require multiline interactions input navigation can comment out the last two lines of the file, while I come up with a better way to implement this.
-->

## Racket Preferences
### Features
- Dark mode based on [Monokai v2.1](http://www.eclipsecolorthemes.org/?view=theme&id=52794)
- `[` (left square bracket) will automatically determine the right bracket for you (no need to `Shift+9` anymore!) and insert a close bracket for you as well
- In addition to the notable ones mentioned here, I enabled all the features I find useful. The language is set to `Beginning Student Custom`, the starting language for CS 135 at UWaterloo. This may change as I progress through the course, or it may not.

### Installation
- Unix: Download [`racket-prefs.rktd`](https://raw.githubusercontent.com/Raymo111/cs135-drtools/master/racket-prefs.rktd) to `$HOME/.racket` and reload DrRacket
- Windows: Download [`racket-prefs.rktd`](https://raw.githubusercontent.com/Raymo111/cs135-drtools/master/racket-prefs.rktd) to `%appdata%\\Racket` (paste that into the File Explorer location bar and hit enter) and reload DrRacket
- Mac OS: Download [`racket-prefs.rktd`](https://raw.githubusercontent.com/Raymo111/cs135-drtools/master/racket-prefs.rktd) to your preferences folder, rename the file to `org.racket-lang.prefs.rktd`, and reload DrRacket
