# bash completion support for issue


# Generates completion reply
# arguments:
# 1: List of possible completion words.
# 2: A prefix to be added to each possible completion word (optional).
# 3: A suffix to be appended to each possible completion word (optional).
__issuecompadd()
{
  COMPREPLY=()

  local c i IFS
  i=0
  IFS=$' \t\n'

  for c in $1; do
    COMPREPLY[i++]="${2-}$c${3-}"
  done
}

_issue()
{
  local cur prev prefix suffix compreply
  cur="${COMP_WORDS[COMP_CWORD]}"
  prev="${COMP_WORDS[COMP_CWORD-1]}"
  prefix=""

  case ${prev} in
    issue)
      suffix=" "
      compreply=$(compgen -W "new open push view" -- ${cur})
      ;;
    new | open | push | view )
      case ${cur} in
        */*)
          suffix=" "
          ;;
        *)
          suffix="/"
          ;;
      esac
      compreply=$(cd $HOME/Dropbox/issues && compgen -d -- ${cur})
      ;;
  esac

  if [ -n "$compreply" ]; then
    __issuecompadd "$compreply" "$prefix" "$suffix"
    return 0
  fi
}

complete -o nospace -F _issue issue
