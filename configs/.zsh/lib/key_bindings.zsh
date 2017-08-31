

bindkey -e
bindkey '\ew' kill-region # [Esc-w] - Kill from the cursor to the mark
bindkey '^r' history-incremental-search-backward
bindkey "^[[5~" up-line-or-history
bindkey "^[[6~" down-line-or-history

# make search up and down work, so partially type and hit up/down to find relevant stuff
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search
bindkey "\eOA" up-line-or-search
bindkey "\eOB" down-line-or-search

bindkey "^[[H" beginning-of-line
bindkey "^[[1~" beginning-of-line
bindkey "^[OH" beginning-of-line
bindkey "^[[F"  end-of-line
bindkey "^[[4~" end-of-line
bindkey "^[OF" end-of-line
bindkey ' ' magic-space    # also do history expansion on space

bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word

bindkey "^[^[[C" forward-word
bindkey "^[^[[D" backward-word
#bindkey '^[^[[C' emacs-forward-word
#bindkey '^[^[[D' emacs-backward-word

bindkey '^[[Z' reverse-menu-complete

# Make the delete key (or Fn + Delete on the Mac) work instead of outputting a ~
bindkey '^?' backward-delete-char # [Backspace] - delete backward
bindkey "^[[3~" delete-char
bindkey "^[3;5~" delete-char
bindkey "\e[3~" delete-char

bindkey '^[^I' reverse-menu-complete
bindkey '^I' complete-word
