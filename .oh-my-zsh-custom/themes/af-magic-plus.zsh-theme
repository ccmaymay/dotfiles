# af-magic-datetime.zsh-theme
#
# Author: Andy Fleming (+ customization by Chandler May)
# URL: http://andyfleming.com/

# dashed separator size
function afmagic_dashes {
  # check either virtualenv or condaenv variables
  local python_env_dir="${VIRTUAL_ENV:-$CONDA_DEFAULT_ENV}"
  local python_env="${python_env_dir##*/}"

  REMAINING_COLUMNS=$(( COLUMNS - 19 ))

  # if there is a python virtual environment and it is displayed in
  # the prompt, account for it when returning the number of dashes
  if [[ -n "$python_env" && "$PS1" = *\(${python_env}\)* ]]; then
    echo $(( REMAINING_COLUMNS - ${#python_env} - 3 ))
  else
    echo $REMAINING_COLUMNS
  fi
}

function k8s_ctx {
  command -v kubectl 2>&1 >/dev/null || return
  local k8s_cluster
  k8s_cluster="$(kubectl config view -o=go-template --template='{{(index .clusters 0).cluster.server}}' 2>/dev/null)" || return
  local k8s_cluster_short
  k8s_cluster_short="$(echo "$k8s_cluster" | sed 's|^https://\([^:/]*\).*|\1|;s/\.idies\.jhu\.edu//')" || return
  local k8s_ns
  k8s_ns="$(kubectl config view -o=go-template --template='{{(index .contexts 0).context.namespace}}' 2>/dev/null)" || return
  if [ "$k8s_cluster_short" = k8sweb ]
  then
    echo -n " ${FG[075]}[${FG[211]}${k8s_cluster_short}${FG[075]}"
  elif [ "$k8s_cluster_short" = k8sdev ]
  then
    echo -n " ${FG[075]}[${FG[223]}${k8s_cluster_short}${FG[075]}"
  else
    echo -n " ${FG[075]}[${FG[153]}${k8s_cluster_short}${FG[075]}"
  fi
  if [ "$k8s_ns" = megawika-viewer ]
  then
    echo -n " ${FG[159]}${k8s_ns}${FG[075]}]%{$reset_color%}"
  elif [ "$k8s_ns" = megawika-collection ]
  then
    echo -n " ${FG[147]}${k8s_ns}${FG[075]}]%{$reset_color%}"
  else
    echo -n " ${FG[153]}${k8s_ns}${FG[075]}]%{$reset_color%}"
  fi
}

# primary prompt: dashed separator, directory and vcs info
PS1="${FG[237]}\${(l.\$(afmagic_dashes)..-.)} %D{%f/%m/%y} %D{%L:%M:%S}%{$reset_color%}
${FG[032]}%~\$(k8s_ctx)\$(git_prompt_info)\$(hg_prompt_info) ${FG[105]}%(!.#.»)%{$reset_color%} "
PS2="%{$fg[red]%}\ %{$reset_color%}"

# right prompt: return code, virtualenv and context (user@host)
RPS1="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"
if (( $+functions[virtualenv_prompt_info] )); then
  RPS1+='$(virtualenv_prompt_info)'
fi
RPS1+=" ${FG[237]}%n@%m%{$reset_color%}"

# git settings
ZSH_THEME_GIT_PROMPT_PREFIX=" ${FG[075]}(${FG[078]}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="${FG[214]}*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="${FG[075]})%{$reset_color%}"

# hg settings
ZSH_THEME_HG_PROMPT_PREFIX=" ${FG[075]}(${FG[078]}"
ZSH_THEME_HG_PROMPT_CLEAN=""
ZSH_THEME_HG_PROMPT_DIRTY="${FG[214]}*%{$reset_color%}"
ZSH_THEME_HG_PROMPT_SUFFIX="${FG[075]})%{$reset_color%}"

# virtualenv settings
ZSH_THEME_VIRTUALENV_PREFIX=" ${FG[075]}["
ZSH_THEME_VIRTUALENV_SUFFIX="]%{$reset_color%}"
