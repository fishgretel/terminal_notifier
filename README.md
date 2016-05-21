[![Slack Room][slack-badge]][slack-link]

# terminal_notifier

Send desktop notifications using [`terminal_notifier`](https://github.com/julienXX/terminal_notifier).

## Install

With [fisherman]

```
fisher gretel/terminal_notifier
```

## Usage

```fish
emit send_notification 'Hey, you!' '🌊 🌊 🌊' 'Take a break and go surfing!' Submarine
```

If the notification is clicked a *URL* can be openend:

```fish
emit send_notification 'Remember to get out!' '⏲ ⏲ ⏲ ⏲ ⏲' (date) Glass https://en.wikipedia.org/wiki/Wilderness
```

By default, existing screen notifications will be replaced. To keep them on-screen but change the content only add a random value at position 6:

```fish
emit send_notification 'Very Important' 'Code fish not eat!' 'Thank you!' Glass http://www.greenpeace.org/international/en/campaigns/oceans/which-fish-can-I-eat/ (random)
```

[slack-link]: https://fisherman-wharf.herokuapp.com/
[slack-badge]: https://fisherman-wharf.herokuapp.com/badge.svg

[fisherman]: https://github.com/fisherman/fisherman
