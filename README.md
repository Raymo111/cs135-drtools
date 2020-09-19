# drracket-customization
Various customizations for DrRacket to make life easier

#### TODO: This repo WILL be made into a raco package when I don't have deadlines threatening to fail me out of CS.
##Disclaimers
- **I am NOT responsible for any issues using any part of this repository will cause you. ALWAYS back up your files, preferences and code!**
- **Though it may not be necessary in all cases, DrRacket should be restarted after most customizations to allow all changes to take effect.**

## Racket Preferences
### Features
- Dark mode based on [Monokai v2.1](http://www.eclipsecolorthemes.org/?view=theme&id=52794)
- All the features I find useful. The language is set to `Beginning Student Custom`, the starting language for CS 135 at UWaterloo. This may change as I progress through the course, or it may not.

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
| ;        | `;; `                |
| ;;       | `;;   `              |
| ppe      | Purpose and examples |
| ctr      | Contract             |
| req      | Requires             |
| tst      | Tests                |

- Ctrl+space trigger

### Installation
This will be automated when I get around to the raco package.

You can optionally install the `drcomplete` raco package for automated code-completion (i.e. you won't have to `Ctrl+/` all the time.) To do this, go to `File > Package Manager...`, make sure you're on the `Do What I Mean` tab, put `drcomplete` in the input field beside `Package Source:`, and click `Install` at the bottom right of the window. Restart DrRacket, then go to `Edit > Enable Automatic Autocompletion` (last item) in the menubar (if it's not already enabled).
1. Go to `Scripts > Manage scripts > New script...` from the menubar
2. Enter `autocomplete` as the name and click `Ok`
3. Wait for a new tab to be created, and paste in everything in `autocomplete.rkt`
4. Restart DrRacket or `Scripts > Manage scripts > Compile scripts and reload` and `Scripts > Manage scripts > Reload menu`

### Usage:
1. Type a shortcut
2. Press Ctrl+<space>
3. The shortcut will be replace with the long form

## Keybindings
### Features
- Current custom keybindings that I'm used to and have implemented are:
| Keybinding   | What it does     | DrRacket default |
|--------------|------------------|------------------|
| Alt+R        | Run the program  | Ctrl+R or F5     |
| Ctrl+Shift+F | Indent all lines | Ctrl+I           |

### Installation
Go to `Edit > Keybindings > Add User-Defined-Keybindings` and choose `keybindings.rkt`. New keybindings will be automatically applied, but DrRacket needs to be restarted for old keybindings to be wiped.
