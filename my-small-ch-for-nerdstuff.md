# Cheatsheet for Linux terminal stuff and commands I always forget

### classic linux commands
ls -l ~ list all files one per line

### Pacman commands 
pacman -Rns package_nam ~ remove package with dependencies and config files 
Pacman -S pkg-name ~ for installing linux arch packages
pacman -Q   ~ alle pakete
pacman -Qe  ~ alle MANUELL installierte pakete
pacman -Qd  ~ nur als depend. installierte pakete
pacman -Qi  ~ infos zu einem Paket
pacman -Si  ~ infos zu noch nicht installiertem paket
sudo pacman -Qdt    ~ alle verwaisten und unbenutzten Pakete
sudo pacman -Rns $(pacman -Qdtq)    ~ löscht alle unbenutzten pakete

### yay packet manager for AUR
yay pkg-name ~ for installing aur packages via yay
yay -Rns pkg-name ~ for removing aur packages and dep. which are not used by any other pkgs
yay -Ps ~ Print system statistics

### vim commands :
vimtutor ~ show vim commands
i ~ insert
:wq ~ write and quit
:q! ~ forcequit without writing
:vs ~ visual split
yy ~ copy current line
P ~ paste before your cursor

### nvchad command : 
(setting, plugins and co. can be changed in ~/.config/nvim/)
space + ch  ~ opens cheatsheet
space + e   ~ opens filetree
space + th  ~ changes colortheme
a  --> filename    ~ creates new file and name it 
tab     ~ switches window
v   ~ opens optionsbar
ctrl + W    ~ opens Window-management-bar
ctrl + w + h    ~ switch to left window
ctrl + w + l    ~ switch to right window
ctrl + alt + n  ~ toggles filetree  
:Mason          ~ lists Mason menue for installing plugins

### latexcommands:
pdflatex [filename].tex     ~ will compile to [filename].pdf

### Farbschemata: 
bash -c  "$(wget -qO- https://git.io/vQgMr)"  ~ gogh Farbschemata

### Generate colorscheme to img:
wal -i img_name.png
wallust run PICTURE.IMG     ~ generates colorscheme based on given picture 
wallust theme <Themename>   ~ genereate colorscheme based on given theme

### Clean cache of pacman and yay:
sudo pacman -Rns $(pacman -Qdtq)    ~ removes old kernels
sudo paccache -r  ~ clean all packages, except 3most recent versions
sudo paccache -ruk0  ~ remove all cached versions of unistalled packages
sudo pacman -Sc  ~ keep only the current and last version of pakets
yay -Pc  ~ clean unneeded dependencies
yay -Rns $(yay -Qdtq)   ~ remove all unused and lost packages
pip cache purge         ~ cleans the pip chache


### tilix shortcuts:
ctrl + PageDown ~ switch to next terminal
ctrl + shift + t    ~ opens new terminalsession
ctrl + alt + d      ~ opens new terminal down  
ctrl + alt + r      ~ opens new terminal to the right

### jupyter notebook:
jupyter lab ~ start jupyter lab in browser

### GCC Compiler:
-g0         ~ flag for no debug information

### Storage:
free -h     ~ shows RAM
htop        ~ shows current RAM
df -h       ~ shows filesystem with -h for "human readable"
expac -H M "%m %n" $(pacman -Qeq) | sort -h     ~ shows storage of all installed packages

### Python venv commands: 
python -m venv myenv_name         ~ creates a venv in current directory with name: "myenv_name"
source myenv_name/bin/activate    ~ activates the venv
deactivate                        ~ deactivates the venv
pip install package_name          ~ installs python modules in venv
pip list                          ~ lists all currently installed python modules
pip freeze > requirements.txt     ~ writes all used pkgs in requirements.txt file
pip install -R requirements.txt   ~ installs all pkgs from requirements.txt 
rm -rf myenv_name                 ~ removes venv
pip uninstall package_name        ~ uninstalls venvs

### System calls:
sudo tee /sys/class/backlight/amdgpu_bl1/brightness <<< 100     ~ sets brightness

### Code formatter:
clang-format --help                 ~ for formatting C and C++ Code
clang-format -i --style=WebKit      ~ for formatting code in sourcefile to WebKit standart
