# new-mac-osx-install-config

## Add entry to sudoers:
`
sudo visudo
vitorjr         ALL = (ALL) NOPASSWD:ALL
`
## Download and install homebrew:
* Open terminal:

`/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
* Install casks:

`
brew cask install adobe-acrobat-reader authy firefox keybase osxfuse skype spectacle sublime-text homebrew/cask-versions/tunnelblick-beta vagrant-manager vlc zoomus appcleaner cheatsheet java microsoft-office screenflow skype-for-business spotify tower-beta vagrant virtualbox vnc-viewer zoomus-outlook-plugin google-chrome insync iterm2-beta forklift deltawalker slack`

`
brew install ack bzip2 fontconfig htop shellcheck vim watch alpine ctags ssh-copy-id ansible lastpass-cli netcat readline terraform_landscape wget archey dialog nmap reattach-to-user-namespace tfenv xz assh dos2unix git rlwrap tree bash-completion expect graphviz ntfs-3g rsync unzip zsh boxes highlight vagrant-completion zsh-completions thefuck pipes-sh ansiweather fzf peco neofetch w3m npm awscli coreutils`

`
brew reinstall gnu-sed --with-default-names`
`
gem install colorls && npm install --global fkill fkill-cli ttab ssh-tunnel-manager`
`
pip3 install ansible-lint grip flake8 google_images_download --user`

`
cd ~/Library/Fonts && { curl -O 'https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Mononoki/Regular/complete/mononoki-Regular%20Nerd%20Font%20Complete.ttf' ; cd -; }`

`
mkdir -p ~/iTerm/logs/output ~/Insync/vitorjr81 ~/git/personal ~/Vagrant ~/Terraform ~/VirtualBoxVMs ~/Pictures/neofetch`



## System Preferences:
* General
    * Appearance - Graphite
    * Check Use dark menu bar and Dock
    * Default web browser: Google Chrome
    * Recent itens: `15`
* Desktop and Screen Saver
    * Desktop -> Change wallpaper
    * Screen Saver:
        * Start with `10m`
        * Check Show with clock
        * Hot Corners -> Upper Right -> Put display to sleep
* Dock
    * Size - Smaller possible
    * Check Magnification and move the slider up to bottom button
    * Check Minimize windows into application icon
* Mission Control
    * Dashboard: As Space
* Language & Region
    * Add Portuguese (Brazil) language
    * Check 24-hour-time
* Security & Privacy
    * General -> Require password `5` seconds after sleep or screen save begins
* Displays
    * Display -> Scaled -> More Space
* Energy Saver
    * Battery -> Turn display off after `10` minutes
    * Power Adapter -> Turn display off after `30` minutes
* Keyboard
    * Keyboard
        * Key Repeat -> Faster possible
        * Delay Until Repeat -> Shortest possible
        * Check Turn keyboard backlight of `30` secs of inactivity
    * Text
        * Exclude omw substituition
        * Uncheck Correct spelling automatically
        * Uncheck use smart quotes
    * Dictation -> Shortcut: off
* Trackpad
    * Point & Click
        * Check tap to click
        * Tracking Speed: Slide above to first e from `speed` word.
    * More Gestures -> Check App Exposé
* Internet Accounts
    * Google -> Contacts
    * Twitter -> Share menu
    * Facebook -> Share menu
    * Linkedin -> Share menu & Notifications
* Network
    * Advanced -> Wins: Set hostname (Vitors-MBP15)
* Extensions
    * All -> OneDrive-Finder
    * Share menu -> Uncheck: Reminders, Notes, Add to Aperture, Add to Reading List, Flickr, Vimeo
    * Today -> Uncheck: Stocks, Reminders  --  Check: World Clock, Calculator, Now Playing
* Sharing
    * Computer Name -> Set hostname (Vitors-MBP15)
    * Check services -> Screen Sharing, File Sharing, Remote Login
* Touch ID
    * Configure another finger
* Date and Time
    * Clock -> Check Show Date
* Time Machine
    * Check Show Time Machine in Menu Bar
    * Check Backup Automatically
    * Configure TimeCapsule for backup server
    * Create folder ~/Insync and ignore on Time Machine

## Dock icons:
* Remove
    * Siri
    * Launchpad
    * Safari
    * Mail
    * Contacts
    * Calendar
    * Notes
    * Photos
    * Reminders
    * Maps
    * Messages
    * Facetime
    * iTunes
    * iBooks
    * App Store
    * Skype for Business
* Keep (order)
    * Finder
    * Forklift
    * Google Chrome
    * Authy
    * iTerm
    * Keybase
    * Skype
    * Spotify
    * Sublime Text 3
    * Tower

## Comercial Softwares and licenses:
* For a better finder: [Forklift3](https://binarynights.com)
* For github: [Tower](https://www.git-tower.com/)
* For screenrecorder: [Screenflow](https://www.telestream.net/screenflow)
* For touchbar customization: [BetterTouchTool](https://folivora.ai/)
* For documentation: [Dash](https://kapeli.com/dash)
* For NTFS: [Paragon](https://www.paragon-software.com/home/ntfs-mac/)
* For gmail/calendar/contacts: [Mailplane](https://mailplaneapp.com/)
* For diff files/folders: [DeltaWalker](https://www.deltawalker.com/)
* AppleStore:
   * BeFocusedPro: Pomodoro time manager
   * New Paint X: Easy edit images
   * Pdf Expert: Edit pdf files

## Configure automatic startup software:
* System Preferences -> User & Groups -> Login itens
   * Add
      * Spectacle
      * CheatSheet
      * Vagrant Manager
   * Remove
      * iTunes Helper
      * Skype for Business


## Configure softwares:
* Forklift
   * After install and register, only this options should be enabled
      * Enable ForkLift Mini in the menubar
      * Enable Dark Mode
      * Check for updates automatically
    * Preferences
      * General
          * Terminal application -> iTerm
          * Sync Favorites -> Dropbox (configure account)
      * Editing: Add Sublime Text for extensions -> .txt, .log, .sql, .sh, .py
    * Make Forklift default file handler
        * `defaults write -g NSFileViewer -string com.binarynights.ForkLift-3` and reboot
    * Reverts to finder
        * `defaults delete -g NSFileViewer` and reboot
* Authy
    * Add device
    * Unlock one account with password to decrypt backup
* iTerm
    * Preferences
        * General
            * Check Quit when all windows are closed
            * Uncheck Confirm closing multiple sessions
            * Uncheck Confirm "Quit iTerm2" command
            * Check Update to beta test versions when available
            * Check Applications in terminal may access clipboard
            * Check Smart Window placement
            * Uncheck Adjust window when changing font size
        * Appearance
            * Theme: Dark
            * Uncheck Show tab bar in full screen
        * Profiles
            * General - Schemes handled: SSH - iterm
            * Colors
                - Download material desing iterm scheme [here](https://github.com/MartinSeeler/iterm2-material-design/raw/master/material-design-colors.itermcolors)
                - Color preset - import
                - Color preset - choose material-desing-colors
            * Text
                - Check Blinking text allowed
                - Change font: 12pt mononoki-Regular Nerd Font Complete
            * Window
                - Transparency: slider under the `y`
                - Columns `400` Rows `300`
            * Terminal
                - Check Unlimited Scrollback
            * Session
                - Check Automatically log session input files in: `/Users/vitorjr/iTerm/logs/output`
            * Advanced
                - Triggers -> Edit
                    - "msg":"ORA-00600" -> Post Notification... -> Passcode \0
                    - "msg":"ORA-00600" -> Highlight text... -> Text: White | Background: Red

* Configure zsh and prompt
    * `sudo dscl . -create /Users/$USER UserShell /usr/local/bin/zsh`
    * `mv ~/.bash_history ~/.bash_history_OLD && ln -s ~/.zsh_history ~/.bash_history`
    * `sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`
    * `curl -L https://iterm2.com/shell_integration/install_shell_integration_and_utilities.sh | bash`
    * `$(brew --prefix)/opt/fzf/install`
    * `sed -i '/fzf/d' ~/.zshrc`
    * `git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting`
    * `git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions`
    * `echo "eval \$(thefuck --alias)\nneofetch\nansiweather|tee ~/.ansiweather" >> ~/.zshrc`
    * `sed -i '/ZSH_THEME/s/^/#/g' ~/.zshrc`
    * `wget https://github.com/vjunior1981/new-mac-osx-install-config/raw/master/neofetch/config.config -O ~/.config/neofetch/config.conf`
    * `wget https://github.com/vjunior1981/new-mac-osx-install-config/raw/master/neofetch/cyberpunk-2077-neofetch.jpg -O ~/Pictures/neofetch/cyberpunk-2077-neofetch.jpg`
    * `sed -i 's/.*source $ZSH\/oh-my-zsh.sh.*/\n###\n# Starting Spaceship Propmt configuration: https:\/\/github.com\/denysdovhan\/spaceship-prompt\nZSH_THEME="spaceship"\n###\n\n\n&/' ~/.zshrc`
    * `sed -i 's/.*source $ZSH\/oh-my-zsh.sh.*/\n###\n# Spaceship prompt configuration:\nSPACESHIP_PROMPT_ADD_NEWLINE=\"true\"\nSPACESHIP_CHAR_SYMBOL=\" \\uf0e7\"\nSPACESHIP_CHAR_PREFIX=\"\\uf296\"\nSPACESHIP_CHAR_SUFFIX=(\" \")\nSPACESHIP_CHAR_COLOR_SUCCESS=\"green\"\nSPACESHIP_PROMPT_DEFAULT_PREFIX=\"\$USER\"\nSPACESHIP_PROMPT_FIRST_PREFIX_SHOW=\"true\"\n\nSPACESHIP_USER_SHOW=\"always\"\nSPACESHIP_USER_COLOR=\"blue\"\nSPACESHIP_TIME_COLOR=\"green\"\nSPACESHIP_TIME_SHOW=\"true\"\nSPACESHIP_HOST_SHOW=\"always\"\nSPACESHIP_HOST_COLOR=\"red\"\nSPACESHIP_AWS_SYMBOL=\"AWS ☁️  \"\nSPACESHIP_BATTERY_SHOW=\"false\"\n###\n\n&/' ~/.zshrc`
    * `cd $ZSH_CUSTOM/plugins; git clone https://github.com/chrissicool/zsh-256color && git clone https://github.com/b4b4r07/emoji-cli.git && https://github.com/gko/listbox.git && \
git clone https://github.com/MichaelAquilina/zsh-emojis.git && git clone git://github.com/gmatheu/zsh-explain-shell.git && \
git clone https://github.com/leophys/zsh-plugin-fzf-finder.git && git clone https://github.com/zpm-zsh/colors.git && \
git clone https://github.com/fabiokiatkowski/exercism.plugin.zsh.git && git clone https://github.com/tysonwolker/iterm-tab-colors.git && \
git clone https://github.com/marzocchi/zsh-notify.git && \
git clone https://github.com/gko/ssh-connect.git && git clone https://github.com/srijanshetty/zsh-pip-completion.git`
    * `sed -i 's/git$/zsh-256color\n  ansiweather\n  aws\n  colored-man-pages\n  cp\n  dash\n  emoji-clock\n  emoji\n  emoji-cli\n  zsh-emojis\n  zsh-explain-shell\n  zsh-plugin-fzf-finder\n  colors\n  exercism\n  iterm-tab-colors\n  zsh-notify\n  ssh-connect\n  zsh-pip-completion\n  git\n  history\n  iterm2\n  nmap\n  osx\n  pep8\n  python\n  rsync\n  screen\n  sublime\n  terraform\n  vagrant-prompt\n  vagrant\n  zsh-navigation-tools\n  zsh_reload\n  pip\n  last-working-dir\n  zsh-syntax-highlighting\n  zsh-autosuggestions/g' ~/.zshrc`
    * `ln -s /Users/vitorjr/Insync/vitorjr81/01-OS-tweaks-envs/00-osx/00-folders-to-sync/99-repo-clones ~/git/personal`
    * `wget https://github.com/vjunior1981/new-mac-osx-install-config/raw/master/.gitconfig -O ~/.gitconfig; wget https://github.com/vjunior1981/new-mac-osx-install-config/raw/master/.gitignore -O ~/.gitignore; wget https://github.com/vjunior1981/new-mac-osx-install-config/raw/master/.vimrc -O ~/.vimrc`
    * `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim && vim -c ':PluginInstall'`
    * `rm -rf $ZSH_CUSTOM/plugins/ssh-connect/listbox && ln -s $ZSH_CUSTOM/plugins/listbox $ZSH_CUSTOM/plugins/ssh-connect/listbox`
    * `echo "source \$ZSH_CUSTOM/plugins/listbox/listbox.sh\nsource \$ZSH_CUSTOM/plugins/ssh-connect/ssh-connect.sh" >> ~/.zshrc`
    * `sed -i 's/.*HIST_STAMPS.*/&\nHIST_STAMPS="dd.mm.yyyy"/' ~/.zshrc`
    * `chmod 600 ~/Insync/vitorjr81/00-private/career/soltius-new-zealand/00-vitor-only/000-keys/id_rsa`
    * `wget https://github.com/vjunior1981/new-mac-osx-install-config/raw/master/ssh-connect/ssh-connect.sh -O $ZSH_CUSTOM/plugins/ssh-connect/ssh-connect.sh`
    * `mkdir -p ~/Pictures/neofetch/Cyberpunk_2077 && cd ~/Pictures/neofetch/Cyberpunk_2077 && googleimagesdownload -k "Cyberpunk 2077" -l 30 -s large -n`


* Tower
    * Enter mail and license key
    * Name and e-mail
    * Diff and merge tool: Deltawalker
    * Default dir: ~/git/personal
    * Service account: add github using OAuth Access Token
    * Preferences
        * General
            * Terminal: iTerm
* Vagrant Manager
    * Preferences
        * Terminal iTerm
        * Terminal editor vim
        * Check launch at login
* VirtualBox
    * Preferences
        * General: Default machine folder `/Users/vitorjr/VirtualBoxVMs`
        * Extensions: Download from [here](https://download.virtualbox.org/virtualbox/) and add
    * On terminal run:
        * `vboxmanage hostonlyif remove vboxnet0; vboxmanage hostonlyif create`
* Finder
    * Preferences
        * General
            - Hard disks, Connected Servers
            - New Finder windows shows: Home (vitorjr)
        * Sidebar
            - Uncheck: iCloud Drive
            - Check: Music, Pictures, vitorjr, Vitors-MBP15
        * Advanced
            - Check: keep folders on top when sorting by name
            - When performing a search: Search the current folder

* *fkill*
![fkill](https://i.imgur.com/o7wTlmn.png)
* *history*
![history](https://i.imgur.com/ErK1Om4.png)
* *neofetch*
![neofetch](https://i.imgur.com/Hi1d2ml.png)

* Sublime configuration
    * Install [package control](https://packagecontrol.io/installation)
    * 
    

## To-do
* Get crypt .gitcredentials
* Get crypt .aws folder
* Get crypt .ssh folder
* Configure sublime-text and plugins

