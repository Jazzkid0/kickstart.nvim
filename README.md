# jazzkid0/kickstart.nvim

If you're new, the original kickstart repo is a much better starting point: https://github.com/nvim-lua/kickstart.nvim 

My version has a few extra plugins, but it's still very lightweight and more importantly fast.

Also it's modularised for easy plugin management.

You will need to change keymaps. Mine are comfortable only for a colemak-dh 42 key split keyboard lmao.

I'm constantly making breaking changes so just fork this and forget, don't try to update down the line bc everything will change.

## Installation

### Install Neovim

Get the latest version, stable or nightly. I use 0.10.0-dev and don't test on any other versions.

### Install External Dependencies

> **NOTE** 
> This is your reminder to backup your previous config
> I prefer to do this by changing the dirname i.e. `mv ~/.config/nvim ~/.config/nvim_backup`
> You can also try multiple installed versions with `NVIM_APPNAME=nvim_backup nvim [opts]`

External Requirements:
- Basic utils: `git`, `make`, `unzip`, C Compiler (`gcc`)
- [ripgrep](https://github.com/BurntSushi/ripgrep#installation)
- If you want your LSP to work, make sure the language is actually installed on your system.

### Install my personal config

Fork this repo. Configure within your own fork.

Change the install location if you already have an nvim instance at ~/.config/nvim, or you use a gross yucky operating system.
```sh
git clone https://github.com/[your github username]/kickstart.nvim.git $HOME/.config/nvim
```


### Post Installation

```sh
nvim
```

Lazy will automatically install plugins on first launch.
use `:Lazy` to manage plugins in future.

Mason will autoinstall requested LSPs and formatters etc.
use `:Mason` to manage.

Treesitter will parse code, allowing for syntax highlighting etc.
`:TSInstall [language]` if it doesn't automatically do this.
