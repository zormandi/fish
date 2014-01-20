set -g __fish_git_prompt_show_informative_status 1

set -g __fish_git_prompt_showupstream "informative"
set -g __fish_git_prompt_char_upstream_ahead "↑"
set -g __fish_git_prompt_char_upstream_behind "↓"
set -g __fish_git_prompt_char_stagedstate '→'
set -g __fish_git_prompt_char_dirtystate " ~"
set -g __fish_git_prompt_char_untrackedfiles " +"

set -g __fish_git_prompt_color_branch magenta
set -g __fish_git_prompt_color_dirtystate f22
set -g __fish_git_prompt_color_stagedstate blue
set -g __fish_git_prompt_color_invalidstate red bold
set -g __fish_git_prompt_color_untrackedfiles eb8002
set -g __fish_git_prompt_color_cleanstate green

function fish_right_prompt --description 'Write out the right prompt'
    echo 'RVM: '
    set_color blue
    printf '%s ' (rvm-prompt)
    set_color normal

    printf '%s' (__fish_git_prompt " Git: ⭠ %s ")
end
