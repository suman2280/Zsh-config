function do_render {
    # Check if the terminal supports images
    local type="${1:-image}"
    # TODO: update this list if needed
    TERMINAL_IMAGE_SUPPORT=(kitty konsole ghostty WezTerm)
    local terminal_no_art=(vscode code codium)
    TERMINAL_NO_ART="${TERMINAL_NO_ART:-${terminal_no_art[@]}}"
    CURRENT_TERMINAL="${TERM_PROGRAM:-$(ps -o comm= -p $(ps -o ppid= -p $$))}"

    case "${type}" in
    image)
        if [[ " ${TERMINAL_IMAGE_SUPPORT[@]} " =~ " ${CURRENT_TERMINAL} " ]]; then
            return 0
        else
            return 1
        fi
        ;;
    art)
        if [[ " ${TERMINAL_NO_ART[@]} " =~ " ${CURRENT_TERMINAL} " ]]; then
            return 1
        else
            return 0
        fi
        ;;
    *)
        return 1
        ;;
    esac
}

if [[ $- == *i* ]]; then
    # This is a good place to load graphic/ascii art, display system information, etc.
    if command -v pokego >/dev/null; then
        pokego --no-title -r 1,3,6
    elif command -v pokemon-colorscripts >/dev/null; then
        pokemon-colorscripts --no-title -r 1,3,6
    elif command -v fastfetch >/dev/null; then
        if do_render "image"; then
            fastfetch --logo-type kitty
        fi
    fi
fi
