# 🐧 Linux Terminal Cheatsheet

A handy cheat sheet for frequently used Linux commands, Pacman/Yay package management, Vim/NvChad shortcuts, LaTeX compilation, Python virtual environments, and more — tailored for daily development on Arch Linux, Neovim (NvChad), Jupyter, and remote university servers.

---

## 📁 Classic Linux Commands

 - `ls -l ~` → Lists all files in the home directory, one per line with details.

---

## 📦 Pacman – Arch Linux Package Manager

 - `pacman -S pkg-name` → Install an Arch package.
 - `pacman -Rns package_name` → Remove package with unused dependencies and config files.
 - `pacman -Q` → List all installed packages.
 - `pacman -Qe` → List all **explicitly** installed packages.
 - `pacman -Qd` → List all **dependencies** installed automatically.
 - `pacman -Qi pkg-name` → Show information about an installed package.
 - `pacman -Si pkg-name` → Show information about an available package.
 - `sudo pacman -Qdt` → List orphaned packages.
 - `sudo pacman -Rns $(pacman -Qdtq)` → Remove all orphaned packages.

---

## 🧞 Yay – AUR Package Manager

 - `yay pkg-name` → Install a package from the Arch User Repository.
 - `yay -Rns pkg-name` → Remove AUR package including unused dependencies.
 - `yay -Ps` → Print system statistics.
 - `yay -Pc` → Clean orphaned AUR dependencies.
 - `yay -Rns $(yay -Qdtq)` → Remove all unused and orphaned AUR packages.

---

## ✍️ Vim / NvChad Shortcuts

- `i` → Enter insert mode
- `:wq` → Save and quit
- `:q!` → Quit without saving
- `:vs` → Vertical split
- `yy` → Copy current line
- `P` → Paste before cursor
- `caw` → Delete word and enter insert mode
- `daw` → Delete word under cursor

### NvChad Specific:
Config path: `~/.config/nvim/`

| Shortcut | Description |
|----------|-------------|
| `<space> + ch` | Open cheatsheet |
| `<space> + e`  | Open file tree |
| `<space> + th` | Change colorscheme |
| `a`            | Create a new file |
| `Tab`          | Switch windows |
| `v`            | Open options bar |
| `Ctrl + W`     | Window manager |
| `Ctrl + W + h` | Move to left window |
| `Ctrl + W + l` | Move to right window |
| `Ctrl + Alt + n` | Toggle file tree |
| `:Mason`       | Open Mason UI for LSP/tools |

---

## 📚 LaTeX

```bash
pdflatex filename.tex
```
→ Compiles `.tex` file to `.pdf`

---

## 🎨 Colors & Themes

**Install Gogh color schemes:**
 - `bash -c "$(wget -qO- https://git.io/vQgMr)"` 

**Generate scheme from image:**
 -`wal -i image.png`
 - `wallust run image.png`

**Wallust Themes:**
 - `wallust theme <theme_name>`

---

## 🧹 Clean Cache (Pacman, Yay, Pip)

 - `sudo pacman -Rns $(pacman -Qdtq)` → Remove unused packages.
 - `sudo paccache -r` → Keep only the 3 most recent versions of packages.
 - `sudo paccache -ruk0` → Remove all cached versions of uninstalled packages.
 - `sudo pacman -Sc` → Keep only current and previous versions.
 - `pip cache purge` → Clear pip cache.

---

## 🧪 Python Virtual Environments
 - `python -m venv env_name` → Create virtual environment.
 - `source env_name/bin/activate` → Activate environment.
 - `deactivate` → Deactivate environment.
 - `pip install package_name`
 - `pip uninstall package_name`
 - `pip list` → List installed Python packages.
 - `pip freeze > requirements.txt`
 - `pip install -r requirements.txt` → Install packages from requirements file.
 - `rm -rf env_name` → Delete virtual environment.

---

## 🧠 Jupyter Notebooks
 - `jupyter lab` → Launch Jupyter Lab in browser.

---

## 🧮 GCC Compiler
 - `-g0` → Compile without debug symbols (release mode).

---

## 💾 System Info / Storage
 - `free -h` → Show RAM usage (human readable)
 - `htop` → Interactive process viewer
 - `df -h` → Show mounted filesystems and usage
 - `expac -H M "%m %n" $(pacman -Qeq) | sort -h` → Show disk usage per installed package

---

## 🖥️ Tilix Terminal Shortcuts

| Shortcut | Action |
|----------|--------|
| `Ctrl + PageDown` | Switch to next terminal tab |
| `Ctrl + Shift + T` | Open new terminal session |
| `Ctrl + Alt + D`   | Open terminal below |
| `Ctrl + Alt + R`   | Open terminal to the right |

---

## 🌞 Screen Brightness
 - `sudo tee /sys/class/backlight/amdgpu_bl1/brightness <<< 100` → Set screen brightness (value may differ per device)

---

## 🎨 C/C++ Code Formatting

```bash
clang-format --help
clang-format -i --style=WebKit file.cpp
```
→ Format source code to WebKit style

---

## 🔐 Connect to OTH Regensburg KI-GPU Server (VPN + SSH)
 - `sudo openfortivpn` → Start VPN
 - `ssh wel36343@im-kigs.oth-regensburg.de` → Connect to GPU server
 - `ssh-copy-id <rz_username>@im-kigs.oth-regensburg.de` → Add your SSH public key to the server

---

> ✨ This cheatsheet is tailored to my environment: Arch Linux + NvChad + Python + C/C++ + Jupyter + OTH VPN setup. Updated regularly.