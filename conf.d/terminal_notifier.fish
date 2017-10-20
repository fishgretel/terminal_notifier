function __send_notification --on-event send_notification -d "Send desktop notifications using terminal-notifier"
    # ensure defaults
    set -q argv[1]; or set argv[1] 'Fish Shell'
    set -q argv[2]; or set argv[2] '🐠 🐡 🐟'
    set -q argv[3]; or set argv[3] 'Waahoo!'
    set -q argv[4]; or set argv[4] 'Submarine'
    if command --search terminal-notifier >/dev/null
        command terminal-notifier -title "$argv[1]" -subtitle "$argv[2]" -message "$argv[3]" -sound "$argv[4]" 2>/dev/null
    else
        set_color -o yellow; echo "unable to call terminal-notifier!"; set_color normal
        return 1
    end
end
