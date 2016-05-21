function --on-event send_notification send_notification -d "Send desktop notifications using terminal-notifier" 
  # ensure defaults
  set -q argv[1]; or set argv[1] 'Fish Shell'
  set -q argv[2]; or set argv[2] '🐠 🐡 🐟'
  set -q argv[3]; or set argv[3] 'Waahoo!'
  set -q argv[4]; or set argv[4] 'Submarine'
  set -q argv[5]; or set argv[5] ''
  set -q argv[6]; or set argv[6] ''
  if command --search terminal-notifier >/dev/null
    command terminal-notifier -title "$argv[1]" -subtitle "$argv[2]" -message "$argv[3]" -sound "$argv[4]" -open "$argv[5]" -group "$argv[6]" 
  else
    set_color -o yellow; echo "unable to call terminal-notifier!"; set_color normal
    return 1
  end
end
