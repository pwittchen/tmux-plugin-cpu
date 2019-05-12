# tmux-plugin-cpu
tmux plugin showing CPU usage

Requirements
------------

This plugin requires `mpstat` program. It can be installed with `sysstat` package.
On Debian/Ubuntu, you can install it as follows:

```
sudo apt-get install sysstat
```

Installation
------------
### Installation with [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) (recommended)

Add plugin to the list of TPM plugins in `.tmux.conf`:

```
set -g @plugin 'pwittchen/tmux-plugin-cpu'
```

Hit `prefix + I` to fetch the plugin and source it.

If format strings are added to `status-right`, they should now be visible.

Usage
-----

In order to see CPU usage via this tmux plugin, add the following command to your `.tmux.conf` file:

```
#{cpu}
```

References
----------
- https://github.com/tmux-plugins
- https://github.com/tmux-plugins/tmux-example-plugin
- https://github.com/tmux-plugins/tmux-battery
- https://github.com/pwittchen/dotfiles
