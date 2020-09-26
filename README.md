# drracket-customization
Various customizations for DrRacket to make life easier

## Disclaimers
- **I am NOT responsible for any issues using any part of this repository will cause you. ALWAYS back up your files, preferences and code!**
- **Though it may not be necessary in all cases, DrRacket should be restarted after most customizations to allow all changes to take effect.**

## Acknowledgements
- Autocomplete was adapted from *complete-word* in [Quickscript Extra](https://github.com/Metaxal/quickscript-extra)
- Keybindings was adapted from [Racket-lang.org](https://docs.racket-lang.org/drracket/Keyboard_Shortcuts.html#%28part._defining-shortcuts%29) documentation

### Contributors
- [Thomas Park](https://github.com/ThomasPark20)

## Racket Preferences
### Features
- Dark mode based on [Monokai v2.1](http://www.eclipsecolorthemes.org/?view=theme&id=52794)
- `[` (left square bracket) will automatically determine the right bracket for you (no need to `Shift+9` anymore!) and insert a close bracket for you as well
- In addition to the notable ones mentioned here, I enabled all the features I find useful. The language is set to `Beginning Student Custom`, the starting language for CS 135 at UWaterloo. This may change as I progress through the course, or it may not.

### Installation
- Unix: Put `racket-prefs.rktd` in `$HOME/.racket` and reload DrRacket
- Windows: Put `racket-prefs.rktd` in `%appdata%\\Racket` (paste that into the File Explorer location bar and hit enter) and reload DrRacket
- Mac OS: Rename `racket-prefs.rktd` to `org.racket-lang.prefs.rktd` and put it in your preferences folder and reload DrRacket

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
This will be automated when I get around to the raco package.

You can optionally install the `drcomplete` raco package for automated code-completion (i.e. you won't have to `Ctrl+/` all the time.) To do this, go to `File > Package Manager...`, make sure you're on the `Do What I Mean` tab, put `drcomplete` in the input field beside `Package Source:`, and click `Install` at the bottom right of the window. Restart DrRacket, then go to `Edit > Enable Automatic Autocompletion` (last item) in the menubar (if it's not already enabled).
1. Go to `Scripts > Manage scripts > New script...` from the menubar
2. Enter `autocomplete` as the name and click `Ok`
3. Wait for a new tab to be created, and paste in everything in `autocomplete.rkt`
4. Restart DrRacket or `Scripts > Manage scripts > Compile scripts and reload` and `Scripts > Manage scripts > Reload menu`

### Usage:
1. Type a shortcut
2. Press `Ctrl+Space`
3. The shortcut will be replace with the long form

## Keybindings
### Features
- Current custom keybindings that I'm used to and have implemented are:

| Keybinding     | What it does                                        | DrRacket default |
|----------------|-----------------------------------------------------|------------------|
| Alt+R          | Run the program                                     | Ctrl+R or F5     |
| Ctrl+Shift+F   | Indent all lines                                    | Ctrl+I           |
| Ctrl+H         | Show Replace                                        | Ctrl+Shift+R     |
| Ctrl+Shift+R   | Replace All                                         | *None*           |
| Ctrl+/         | Comment out line with `;`                           | *None*           |
| Ctrl+Backspace | Delete word left of cursor                          | Alt+Backspace    |
| Ctrl+Delete    | Delete word right of cursor                         | Alt+Delete       |
| Ctrl+Up/Down   | Switch between Interactions and Definitions Windows | Ctrl+F6          |

### Installation
Go to `Edit > Keybindings > Add User-Defined-Keybindings` and choose `keybindings.rkt`. DrRacket needs to be restarted for keybindings to be updated.
