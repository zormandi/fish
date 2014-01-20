set fg_host blue
set fg_path fff
set bg_colors 1a1a1a 222 333 444 555 666 777 888 999

function fish_prompt
    set bg_index 1

    set_color -b $bg_colors[$bg_index] $fg_host
    printf ' %s ' (hostname | cut -d . -f 1)

    set cwd_path (pwd | tr / '\n')
    set -e cwd_path[1]

    for dirname in $cwd_path
        set next_index (expr \( $bg_index + 1 \) \% \( (count $bg_colors) + 1 \))
        if test $next_index -eq 0
            set next_index 1
        end
        set_color -b $bg_colors[$next_index] $bg_colors[$bg_index]
        set bg_index $next_index

        printf '⮀'

        set_color $fg_path
        printf ' %s ' $dirname
    end

    set_color -b normal $bg_colors[$bg_index]
    printf '⮀ '

    set_color normal
end
