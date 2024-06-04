# Development Environment Setup

Welcome to my development environment configuration repository. This repository contains all the necessary files and scripts to set up a consistent and efficient development environment using tools like `nvim`, `tmux`, and `wezterm`.

## Table of Contents

- [Development Environment Setup](#development-environment-setup)
  - [Table of Contents](#table-of-contents)
  - [Installation](#installation)
  - [Configuration](#configuration)
  - [Usage](#usage)
  - [Tmux Configuration](#tmux-configuration)
    - [Plugins](#plugins)
    - [Plugins Installation](#plugins-installation)
    - [Keybindings](#keybindings)
    - [Custom Settings](#custom-settings)
    - [Configuration File](#configuration-file)
    - [Neovim Usage](#neovim-usage)
  - [Files](#files)
  - [Contributing](#contributing)
  - [License](#license)

## Installation

To get started with setting up your development environment, follow these steps:

1. **Clone the Repository**

    ```bash
    git clone https://github.com/bohdanbodnarenko/dev-env-files.git
    cd dev-env-files
    ```

2. **Run the Setup Script**

    The `setup.sh` script will install all necessary dependencies and symlink configuration files to their appropriate locations.

    ```bash
    chmod +x setup.sh
    ./setup.sh
    ```

## Configuration

The repository is organized into several configuration files and directories. Here is a brief overview:

- **.config/**: Contains configuration files for various tools.
- **.tmux/**: Configuration for `tmux`, including plugins.
- **.gitignore**: Specifies files and directories to be ignored by `git`.
- **.wezterm.lua**: Configuration for `wezterm`, a GPU-accelerated terminal emulator.
- **setup.sh**: Shell script to set up the environment.

Feel free to customize these configurations to suit your preferences.

## Usage

After running the setup script, your development environment should be configured. Here are some key commands and features:

- **Neovim (`nvim`)**: Enhanced text editor with powerful plugins and configurations.
- **Tmux**: Terminal multiplexer to manage multiple terminal sessions.
- **Wezterm**: Advanced terminal emulator with GPU acceleration.

## Tmux Configuration

### Plugins

This setup uses the following tmux plugins, managed by [Tmux Plugin Manager (TPM)](https://github.com/tmux-plugins/tpm):

1. [tmux-plugins/tpm](https://github.com/tmux-plugins/tpm): Tmux Plugin Manager.
2. [tmux-plugins/tmux-sensible](https://github.com/tmux-plugins/tmux-sensible): Basic tmux settings everyone can agree on.
3. [tmux-plugins/tmux-resurrect](https://github.com/tmux-plugins/tmux-resurrect): Persists tmux environment across system restarts.
4. [tmux-plugins/tmux-continuum](https://github.com/tmux-plugins/tmux-continuum): Continuous saving of tmux environment.
5. [tmux-plugins/tmux-yank](https://github.com/tmux-plugins/tmux-yank): Copy to system clipboard.
6. [tmux-plugins/tmux-prefix-highlight](https://github.com/tmux-plugins/tmux-prefix-highlight): Highlight when prefix is pressed.
7. [tmux-plugins/tmux-pain-control](https://github.com/tmux-plugins/tmux-pain-control): Pain control for tmux.
8. [tmux-plugins/tmux-copycat](https://github.com/tmux-plugins/tmux-copycat): Enhances tmux search functionality.
9. [tmux-plugins/tmux-open](https://github.com/tmux-plugins/tmux-open): Open highlighted files or URLs.

### Plugins Installation

To install the tmux plugins, ensure TPM is installed:

```sh
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Then, press `prefix + I` (capital i, as in Install) in tmux to fetch the plugins.

### Keybindings

Here are some custom keybindings used in this configuration:

- **Prefix Key**: `C-a` (Control + a)
- **Reload Tmux Configuration**: `prefix + r`
- **Save and Restore Sessions**:
  - **Save**: `prefix + Ctrl-s`
  - **Restore**: `prefix + Ctrl-r`
- **Pane Navigation**:
  - **Move left**: `prefix + h`
  - **Move down**: `prefix + j`
  - **Move up**: `prefix + k`
  - **Move right**: `prefix + l`
- **Resize Panes**:
  - **Left**: `prefix + Shift-h`
  - **Down**: `prefix + Shift-j`
  - **Up**: `prefix + Shift-k`
  - **Right**: `prefix + Shift-l`
- **Copy Mode**:
  - **Enter copy mode**: `prefix + [`
  - **Copy selection**: `prefix + y`
- **Plugins**:
  - **Open URLs**: `prefix + o`
  - **Yank**: `prefix + y`
  - **Highlight prefix**: `prefix + Space` (toggles highlighting)

### Custom Settings

This tmux configuration includes several custom settings to enhance your workflow:

- **Mouse Mode**: Enabled for easier pane and window navigation.
- **Status Bar**: Customized with useful information and a pleasing color scheme.
- **Pane Management**: Efficient navigation and resizing keybindings.

### Configuration File

The .tmux.conf file in this repository includes all the above settings and more. Feel free to explore and customize it to fit your needs.

### Neovim Usage

- Open `nvim`:

    ```bash
    nvim
    ```

- Plugin management is handled by `vim-plug`. To install plugins, open `nvim` and run:

    ```vim
    :PlugInstall
    ```

## Files

- **.config/**: Contains subdirectories for various tools like `nvim` and `wezterm`.
- **.tmux/**: Includes the `tmux` configuration and plugin settings.
- **setup.sh**: This script sets up the environment by installing dependencies and creating symlinks.

## Contributing

Contributions are welcome! If you have suggestions or improvements, feel free to create a pull request or open an issue.

1. Fork the repository.
2. Create your feature branch (`git checkout -b feature/new-feature`).
3. Commit your changes (`git commit -am 'Add new feature'`).
4. Push to the branch (`git push origin feature/new-feature`).
5. Create a new Pull Request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

For any questions or support, please contact me at [bodya.bodnarenko@gmail.com](mailto:bodya.bodnarenko@gmail.com).

Happy coding!
