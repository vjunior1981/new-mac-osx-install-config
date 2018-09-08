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
brew cask install adobe-acrobat-reader authy firefox keybase osxfuse skype spectacle sublime-text homebrew/cask-versions/tunnelblick-beta vagrant-manager vlc zoomus appcleaner cheatsheet java microsoft-office screenflow skype-for-business spotify tower-beta vagrant virtualbox vnc-viewer zoomus-outlook-plugin google-chrome insync iterm2-beta forklift`

`
brew install ack bzip2 fontconfig htop shellcheck vim watch alpine ctags ssh-copy-id ansible lastpass-cli netcat readline terraform_landscape wget archey dialog nmap reattach-to-user-namespace tfenv xz assh dos2unix git rlwrap tree bash-completion expect graphviz ntfs-3g rsync unzip zsh boxes highlight vagrant-completion zsh-completions`

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
                - 

    
    
   
    
    

```    1  git clone https://github.com/zdharma/fast-syntax-highlighting.git \\n  ~/.oh-my-zsh/custom/plugins/fast-syntax-highlighting
    2  git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
    3  ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
    4  vi .zshrc
    5  ansible localhost -m ping
    6  echo $SHELL
    7  zsh
    8  echo $SHELL
    9  zsh
   10  echo $SHELL
   11  which zsh
   12  /usr/local/bin/zsh
   13  echo $SHELL
   14  /usr/local/bin/zsh --login
   15  echo $SHELL
   16  /usr/local/bin/zsh
   17  vi .zshrc
   18  source ~/.zshrc
   19  echo $SHELL
   20  zsh
   21  echo $SHELL
   22  set -xv
   23  zsh
   24  set +xv
   25  vi .zshrc
   26  source .zshrc
   27  echo $SHELL
   28  vi .zshrc
   29  source .zshrc
   30  echo $SHELL
   31  cd 
   32  echo $SHELL
   33  bash
   34  vi .zshrc
   35  source .zshrc
   36  cd 
   37  vi .zshrc
   38  vils
   39  ls
   40  vi .zshrc
   41  colorls
   42  hyper i hyper-search
   43  pwd
   44  exit
   45  hyper i hyper-pane
   46  hyper i hyperpower\n
   47  sudo su - 
   48  ls 
   49  top
   50  htop
   51  ls -l 
   52  hyper i hyper-opacity
   53  ls -ltrh
   54  ansible
   55  ansible localhost -m ping
   56  ls -ltrh
   57  brew search authy
   58  brew cask install authy
   59  top
   60  htop
   61  cd Downloads
   62  ls -ltrh
   63  vi teste
   64  cat teste
   65  ls -lstrb
   66  ls -ltrh
   67  rm ~/.bash_history
   68  ln -s ~/.zsh_history ~/.bash_history
   69  top
   70  htop
   71  bash
   72  hyperdocs ansible
   73  hyperdocs react
   74  ls -ltrh
   75  hyperdocs
   76  hyperdocs react
   77  hpm install hyperdocs\n
   78  cd ~/.hyper_plugins/local
   79  ls -tlrh
   80  ls -la
   81  cd ..
   82  ls -la
   83  cd cache
   84  ls -la
   85  cd v1
   86  ls
   87  cd ..
   88  ls- ltrh
   89  cd 
   90  colorls
   91  ls -tlrh
   92  fish
   93  node
   94  git status
   95  mkdir 
   96  cd Downloads
   97  mkdir teste-git
   98  cd teste-git
   99  git init
  100  git status
  101  git tst
  102  git test
  103  node
  104  ls -l
  105  ls -l 
  106  env|grep -i zsh
  107  autoload -U promptinit; promptinit\n
  108  prompt pure
  109  ls
  110  colorls
  111  npm uninstall --global pure-prompt
  112  cd 
  113  vi .zshrc
  114  cd Insync
  115  ls
  116  ls -l 
  117  cd vitorjr81
  118  ls
  119  ls 
  120  cd 00-private
  121  ls
  122  cd ..
  123  cd 01-OS-tweaks-envs
  124  ls
  125  cd 00-osx
  126  ls
  127  cd 00-folders-to-sync/
  128  ls
  129  cd 99-repo-clones
  130  ls
  131  ls -la
  132  cd 
  133  cd Downloads
  134  rsync -av --progress 192.168.20.100:/Users/vitorjr/git .
  135  source ~/.zshrc
  136  colorls 
  137  source $(dirname $(gem which colorls))/tab_complete.sh
  138  alias lc='colorls -lA --sd'
  139  lc
  140  la
  141  cd git
  142  ls -ltrh
  143  ls -la
  144  cd personal
  145  ls -la
  146  cd 0-git-related
  147  ls -l 
  148  ssh 192.168.20.100
  149  cd 
  150  vi .zshrc
  151  source .zshrc
  152  cd .oh-my-zsh
  153  ls
  154  cd plugins
  155  ls
  156  lc
  157  ls
  158  lc
  159  npm install fkill
  160  source ~/.zshrc
  161  fkill
  162  brew reinstall npm --force
  163  alias
  164  npm install fkill
  165  npm install
  166  nmp cache clean
  167  npm cachel clean
  168  npm cache clean
  169  npm cache clean --force
  170  npm install
  171  sudo npm install -g npm
  172  npm install
  173  ls -ltrh /Users/vitorjr/package.json
  174  brew install node 
  175  brew reinstall node --force
  176  npm install
  177  brew reinstall npm --force
  178  npm install
  179  sudo rm -rf /usr/local/lib/node_modules/npm\n
  180  brew reinstall node
  181  brew update\n
  182  brew uninstall node\n
  183  brew install node\n
  184  brew uninstall --force node\n
  185  brew install node\n
  186  npm install
  187  npm install fkill
  188  brew uninstall node; \n
  189  brew uninstall --force node
  190  brew prune;\n
  191  rm -f /usr/local/bin/npm /usr/local/lib/dtrace/node.d;\n
  192  rm -rf ~/.npm;\n
  193  brew install node;\n
  194  npm install
  195  touch /Users/vitorjr/package.json
  196  npm init
  197  npm install fkill
  198  cd 
  199  rm package.json
  200  brew uninstall --force node\n
  201  brew prune;\n
  202  which npm
  203  npm
  204  brew uninstall npm --force
  205  brew prune;\n
  206  npm
  207  which node
  208  which npm
  209  ls -l /usr/local/bin/npm
  210  ls -l /usr/local/lib/node_modules/npm/bin/npm-cli.js
  211  npm
  212  cd /usr/local
  213  ls
  214  cd lo
  215  cd lib
  216  ls
  217  ls -l
  218  ls -ltrh
  219  cd node_modules
  220  ls t-lrh
  221  ls -tlrh
  222  cd npm
  223  ls -tlrh
  224  ls -la
  225  cd ..
  226  ls -l 
  227  cd ..
  228  rm -rf node_modules
  229  ls -ltrgh
  230  ls -ltrh
  231  npm
  232  cd 
  233  ls -tlh
  234  ls -tlrh
  235  brew uninstall npm --force
  236  brew uninstall node --force
  237  brew install node\n\n
  238  node
  239  npm
  240  npm install
  241  cd
  242  vi .zshrc
  243  source .zshrc
  244  npm install --global fkill-cli
  245  npm install --global fkill
  246  fkill
  247  cd Downloads
  248  ls -ltrh
  249  cd git
  250  ls -l 
  251  cd personal/00-repo-osx
  252  ls
  253  ssh 192.168.20.100
  254  cd ..
  255  cd 
  256  ls -tlrh
  257  rm -rf package-lock.json
  258  npm install
  259  npm install --global
  260  cd 
  261  clear
  262  ls -l 
  263  mkdir git
  264  ls -ltrh
  265  cd git
  266  rsync -av --progress 192.168.20.100:/Users/vitorjr/git/personal .
  267  ls -ltrh
  268  ls -la
  269  cd personal
  270  ls -ltrh
  271  cd 00-repo-osx/01-user-home-bin-dir/envs
  272  ls -la
  273  ln -s $PWD/0-load-all-source.fnc ~/.load-all-source.fnc
  274  ls -la ~/.load-all-source.fnc
  275  source ~/.load-all-source.fnc
  276  vi ~/.load-all-source.fnc
  277  ls -l 
  278  cd 
  279  source .zshrc
  280  cd -
  281  ls -l 
  282  cd ..
  283  ls -l 
  284  cd ..
  285  ls -l
  286  cd 00-user-home-dot-files
  287  ls -ltrh
  288  ls -la
  289  ln -s $PWD/.vimrc ~/
  290  ls -la ~/.vimrc
  291  vim -c ':PluginInstall'
  292  rm -rf ~/.vim* 
  293  ln -s $PWD/.vim ~/
  294  ln -s $PWD/.vimrc ~/
  295  vim
  296  vi teste
  297  vi
  298  ln -s $PWD/.ssh ~/
  299  rm -rf ~/.ssh
  300  ln -s $PWD/.ssh ~/
  301  alias al-asshbuild='assh config build > ~/.ssh/config'
  302  al-asshbuild
  303  ssh oren-nonprod-rep1-pr1
  304  chmod 600 /Users/vitorjr/Insync/vitorjr81/00-private/career/soltius-new-zealand/00-vitor-only/000-keys/id_rsa
  305  ssh oren-nonprod-rep1-pr1
  306  source ~/.load-all-source.fnc
  307  source .zshrc_
  308  cd 
  309  source .zshrc
  310  cd -
  311  ls -l
  312  ls -la
  313  rm teste
  314  cd ..
  315  ls -l 
  316  cd 01-user-home-bin-dir
  317  ls -l 
  318  ln -s $PWD/bin ~/bin
  319  cd ..
  320  ls -l 
  321  cd 00-user-home-dot-files
  322  ls -la
  323  ln -s  $PWD/.aws ~/
  324  ln -s  $PWD/.git-credentials ~/
  325  ln -s  $PWD/.gitconfig ~/
  326  ln -s  $PWD/.gitignore ~/
  327  archey
  328  which archey
  329  sudo vi /usr/local/bin/archey
  330  archey
  331  rm -rf ~/.archey-ip
  332  archey
  333  ls -1 ${REPO}/01-user-home-bin-dir/envs/*.src
  334  source /Users/vitorjr/git/personal/00-repo-osx/01-user-home-bin-dir/envs/e00-env-mac.src
  335  vi /Users/vitorjr/git/personal/00-repo-osx/01-user-home-bin-dir/envs/e00-env-mac.src
  336  al-insync
  337  al-fileperm
  338  cd ..
  339  cd 
  340  cd Downloads
  341  ls -ltrh
  342  al-fix-dir-perm
  343  al-fix-file-perm
  344  ls -l 
  345  alias al-set-hostname='sudo /usr/sbin/scutil --set HostName Vitors-MBP15; sudo /usr/sbin/scutil --set LocalHostName Vitors-MBP15; sudo /usr/\n  sbin/scutil --set ComputerName Vitors-MBP15'
  346  hostname
  347  alias py-web='pkill Python /usr/local/bin/grip; grip . 127.0.0.1:10000 1>/dev/null 2>/dev/null &; sleep 1; open -a /Applications/Google\ Chr\n  ome.app http://127.0.0.1:10000'
  348  py-web
  349  cat /Users/vitorjr/git/personal/00-repo-osx/01-user-home-bin-dir/envs/e00-env-mac.src
  350  al-zsh-reload
  351  vi teste
  352  bash teste
  353  source te
  354  source teste
  355  cd 
  356  vi .load-all-source.fnc
  357  source .zshrc
  358  vi .zshrc
  359  source .zshrc
  360  cat ~/.load-all-source.fnc
  361  function fn-loadAllSource () {\n    for i in `ls -1 ${REPO}/01-user-home-bin-dir/envs/*.src`; do\n        bash $i\n    done\n}
  362  fn-loadAllSource
  363  #!/usr/bin/env bash\n##### 0-load-all-source-fnc.src\n### environment envs\nGIT_LOCAL=~/git/personal; export GIT_LOCAL\nREPO=${GIT_LOCAL}/00-repo-osx; export REPO\n\n### functions\n# function load all source\nfunction fn-loadAllSource () {\n    for i in `ls -1 ${REPO}/01-user-home-bin-dir/envs/*.src`; do\n        bash $i\n    done\n}
  364  fn-loadAllSource
  365  alias
  366  ls -l 
  367  cd 
  368  al-zsh-reload
  369  ls- l 
  370  ls -l 
  371  cd git/personal
  372  ls
  373  cd 00-repo-osx
  374  ls
  375  cd 00-user-home-dot-files
  376  ls 
  377  cd ..
  378  cd 01-user-home-bin-dir
  379  ls -l 
  380  cd envs
  381  ls -l 
  382  chmod +x *
  383  ls -l
  384  . ./0-load-all-source.fnc
  385  cd 
  386  cd git/personal
  387  ls
  388  cd 00-repo-osx
  389  ls
  390  cd 01-user-home-bin-dir
  391  ls -l
  392  cd envs
  393  ls -l 
  394  . ./0-load-all-source.fnc
  395  alias
  396  vi 0-load-all-source.fnc
  397  . ./0-load-all-source.fnc
  398  vi 0-load-all-source.fnc
  399  . ./0-load-all-source.fnc
  400  cd 
  401  vi .zshrc
  402  ls -l 
  403  source .load-all-source.fnc
  404  alias
  405  cd .oh-my-zsh
  406  ls
  407  cd themes
  408  ls
  409  cd ..
  410  l
  411  cd custom
  412  ls
  413  cd themes
  414  ls
  415  cd spaceship-prompt
  416  ls
  417  cd sections
  418  ls- l 
  419  ls -l 
  420  cd ..
  421  ls -l 
  422  cat spaceship.zsh
  423  cat spaceship.zsh|grep -i battery
  424  vi spaceship.zsh
  425  cd 
  426  vi .zshrc
  427  alias|grep -i al
  428  source .load-all-source.fnc
  429  alias|grep -i al
  430  cd 
  431  vi .load-all-source.fnc
  432  vi .zshrc
  433  source .zshrc
  434  cd git/personal
  435  ls
  436  cd 00-repo-osx
  437  ls
  438  cd 01-user-home-bin-dir
  439  ls
  440  cd envs
  441  ls - l
  442  ls -l 
  443  vi 0-load-all-source.fnc
  444  sudo chown vitorjr ~/.vimtags
  445  al-insync
  446  cd 
  447  fkill
  448  cd 
  449  htop
  450  vi
  451  sqlp
  452  ls
  453  cd 
  454  cd git/personal
  455  ls
  456  cd 9999-work
  457  ls
  458  cd 00-universal
  459  ls
  460  ls -l 
  461  cd ../../99-repo-clones/02-oracle-instantclient-12c-osx
  462  chmod +x sqlplus
  463  sqlp
  464  cd 
  
in ~ vitorjr⬢
brew list
ack                             bzip2                           fontconfig                      htop                            libunistring                    perl                            shellcheck                      vim
adns                            coreutils                       freetype                        icu4c                           libyaml                         python                          sqlite                          watch
alpine                          ctags                           gd                              jpeg                            lua                             python@2                        ssh-copy-id                     webp
ansible                         curl                            gdbm                            lastpass-cli                    netcat                          readline                        terraform_landscape             wget
archey                          dialog                          gettext                         libidn2                         nmap                            reattach-to-user-namespace      tfenv                           xz
assh                            dos2unix                        git                             libpng                          node                            rlwrap                          tree                            zip
bash-completion                 expect                          graphviz                        libtiff                         ntfs-3g                         rsync                           unzip                           zsh
boxes                           findutils                       highlight                       libtool                         openssl                         ruby                            vagrant-completion              zsh-completions

in ~ vitorjr⬢
brew cask list
adobe-acrobat-reader    authy                   firefox                 keybase                 osxfuse                 skype                   spectacle               sublime-text-dev        tunnelblick-beta        vagrant-manager         vlc                     zoomus
appcleaner              cheatsheet              java                    microsoft-office        screenflow              skype-for-business      spotify                 tower-beta              vagrant                 virtualbox              vnc-viewer              zoomus-outlook-plugin

  
  
```
