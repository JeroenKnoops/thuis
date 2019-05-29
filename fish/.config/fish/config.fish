function fish_prompt
    ~/installations/powerline-shell/powerline-shell.py --cwd-max-depth=4 $status --shell bare ^/dev/null
end

set -gx RBENV_ROOT /usr/local/var/rbenv  
. (rbenv init -|psub)

fish_vi_key_bindings

alias :q="exit"

# https://remysharp.com/2018/08/23/cli-improved
alias c="bat"
alias ping="prettyping --nolegend"
alias du="ncdu --color dark -x --exclude .git --exclude node_modules"
alias help='tldr'

alias lc="colorls -A --sd -1"
alias lct="colorls -A --sd --tree"
alias lcg="colorls -A --sd --gs -1"

alias th="catpix ~/Desktop/tinusenhasse.png"

alias click='cd /Users/software-concepts/installations/bucklespring && ./buckle &'
alias fix-spotlight='find . -type d -name "node_modules" -exec touch "{}/.metadata_never_index" \;'

abbr t "toilet -f mono12  -F metal (date +\"%T\") "
abbr g "git"

set JAVA_8_HOME (/usr/libexec/java_home -v1.8)
set JAVA_9_HOME (/usr/libexec/java_home -v9)
set JAVA_12_HOME (/usr/libexec/java_home -v 12)
set JAVA_HOME (/usr/libexec/java_home -v 11)

set PATH $JAVA_HOME/bin $PATH

set GRADLE_HOME /usr/local/opt/gradle/libexec

set FABRICPATH $HOME/workspace/blockchain/hyperledger-tutorial/fabric-samples
set PATH $PATH FABRICPATH/bin

set EDITOR 'vim'

eval (thefuck --alias | tr '
' ';')

set symnav_prompt_pwd 1
set symnav_fish_prompt 1 
set symnav_substitution_mode symlink
set symnav_execute_substitution 0
set symnav_substitute_PWD 1

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

function iterm2_print_user_vars
  set -l git_branch (git branch ^/dev/null | sed -n '/\* /s///p')
  set -l git_remote (git remote -v ^/dev/null | awk 'NR==1{print $2}')
  iterm2_set_user_var gitBranch "$git_branch"
  iterm2_set_user_var gitRemote "$git_remote"
end

set -gx  LC_ALL en_US.UTF-8  

function fish_greeting
  toilet -f mono12  -F metal (date +"%T") 
  echo "
   Semantic Git Commit: sgc
   cat blurk.txt | lolcat
   
   vim: gaip| " | lolcat
  echo
end

export NVM_DIR="$HOME/.nvm"
eval (direnv hook fish)
set -x PATH $HOME/.fastlane/bin $PATH
set -x PATH $HOME/.pyenv/shims $PATH
set -x PATH $HOME/.cargo/bin $PATH
set -x PATH $HOME/.deno/bin $PATH

set -g fish_user_paths "/usr/local/opt/openssl/bin" $fish_user_paths
