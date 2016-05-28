[![Slack Room][slack-badge]][slack-link]

# terminal_notifier

Send *OS X* desktop notifications from *Fish* using [`terminal-notifier`](https://github.com/julienXX/terminal-notifier).

## Install

With [fisherman]

```
fisher fishgretel/terminal_notifier
```

## Usage

While `__send_notification` can be called as a function it is recommended to `emit` [events](http://fishshell.com/docs/current/#event):

```fish
emit send_notification 'Hey, you!' '🌊 🌊 🌊' 'Take a break and go surfing!'
```

Of course, values can be evaluated at emission:

```fish
emit send_notification 'Remember to get out!' '⏲ ⏲ ⏲ ⏲ ⏲' (date)
```

By default, the *Submarine* sound will be used. To change that add an argument at position 4:

```fish
emit send_notification 'Very Important' 'Code fish not eat!' 'Thank you!' Glass
```

[slack-link]: https://fisherman-wharf.herokuapp.com/
[slack-badge]: https://fisherman-wharf.herokuapp.com/badge.svg

[fisherman]: https://github.com/fisherman/fisherman
