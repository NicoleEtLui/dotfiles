
# Load antigen
source /usr/local/share/antigen/antigen.zsh
# install some antigen bundles
antigen use oh-my-zsh
antigen bundles <<EOBUNDLES
  # Pure prompt
  # mafredri/zsh-async
  # sindresorhus/pure

  # Because I have the permission
  sudo

  # Better with colors!
  colored-man-pages

  # Help working with version control systems.
  git
  git-extras

  # Helper for extracting different types of archives.
  extract

  # Additional completion definitions for Zsh.
  zsh-users/zsh-completions src

  # ZSH port of Fish shell's history search feature.
  zsh-users/zsh-history-substring-search

  # Syntax highlighting bundle.
  zsh-users/zsh-syntax-highlighting

  # zsh completion for docker
  felixr/docker-zsh-completion

  # Z: jump around! jump around!
  rupa/z z.sh

  # Help working with Node.js
  node
  npm
  nvm
EOBUNDLES
PURE_CMD_MAX_EXEC_TIME=3
antigen theme robbyrussell
# tell Antigen that we're done.
antigen apply

for file in ~/.{bash_profile,zshrc.local,aliases,functions,path,extra,exports,dockerfunc,dockerenv}; do
	[[ -r "$file" ]] && [[ -f "$file" ]] && source "$file"
done
unset file
