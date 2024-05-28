# Development Environment Setup

Welcome to my development environment configuration repository. This repository contains all the necessary files and scripts to set up a consistent and efficient development environment using tools like `nvim`, `tmux`, and `wezterm`.

## Table of Contents

- [Installation](#installation)
- [Configuration](#configuration)
- [Usage](#usage)
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

### Tmux Usage

- Start a new session:

    ```bash
    tmux
    ```

- Detach from a session:

    ```bash
    Ctrl+b d
    ```

- List sessions:

    ```bash
    tmux ls
    ```

- Attach to a session:

    ```bash
    tmux attach-session -t <session-name>
    ```

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

