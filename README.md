# 🪟 My Hyprland Setup – Arch Linux Based

A simple and complete Hyprland setup guide for **Arch Linux and Arch-based distributions**, including required packages, Chaotic-AUR support, and automatic installation using an AUR helper.

---

## 🧱 Prerequisites

Make sure you are using:
- **Arch Linux**
- **CachyOS**
- **Garuda Linux**
- Any **Arch-based Linux distribution**

You must also have an **AUR helper** installed (`paru` or `yay`).

If you don’t have one yet, run:
```bash
sudo pacman -S --needed git base-devel
```

Then install **one** of the following AUR helpers:

```bash
# choose one
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
# or
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

---

## 🏗️ Add Chaotic-AUR

> Skip this step if you are using **Garuda Hyprland**.

Some packages used in this setup (such as **Sweet themes** and **icons**) are provided by **Chaotic-AUR**.

Follow the official guide here:  
🔗 https://aur.chaotic.cx/

Or enable it manually using the commands below:
```bash
sudo pacman-key --recv-key FBA220DFC880C036 --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key FBA220DFC880C036
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst'
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'

echo "[chaotic-aur]" | sudo tee -a /etc/pacman.conf
echo "Include = /etc/pacman.d/chaotic-mirrorlist" | sudo tee -a /etc/pacman.conf
sudo pacman -Sy
```

---

## ⚡ Automatic Installation

### 🔹 Using `paru`
```bash
paru -S hypridle hyprland hyprlock hyprsunset uwsm alacritty btop catppuccin-cursors-mocha cliphist hypremoji fastfetch fcitx5 fcitx5-configtool fcitx5-gtk fish foot jq gnome-system-monitor grim kate kvantum micro satty mpv mpvpaper nemo nemo-fileroller nemo-image-converter nemo-preview nemo-share nwg-displays nwg-dock-hyprland nwg-drawer nwg-look vte pavucontrol pipewire pipewire-alsa pipewire-jack pipewire-pulse plasma5-themes-sweet-full-git plasma5-themes-sweet-kde-git tokyonight-gtk-theme-git polkit-gnome polkit-kde-agent power-profiles-daemon qt5-wayland qt6-wayland sddm sddm-theme-sweet-git starship swappy swaync find-the-command sweet-cursors-hyprcursor-git sweet-folders-icons-git awww tumbler waybar waybar-module-pacman-updates-git wireplumber wlogout walker yad ttf-dejavu-nerd ttf-jetbrains-mono ttf-jetbrains-mono-nerd ttf-noto-nerd ttf-noto-emoji-monochrome ttf-nerd-fonts-symbols ttf-nerd-fonts-symbols-common ttf-nerd-fonts-symbols-mono
```

### 🔹 Using `yay`
```bash
yay -S hypridle hyprland hyprlock hyprsunset uwsm alacritty btop catppuccin-cursors-mocha cliphist hypremoji fastfetch fcitx5 fcitx5-configtool fcitx5-gtk fish foot jq gnome-system-monitor grim kate kvantum micro satty mpv mpvpaper nemo nemo-fileroller nemo-image-converter nemo-preview nemo-share nwg-displays nwg-dock-hyprland nwg-drawer nwg-look vte pavucontrol pipewire pipewire-alsa pipewire-jack pipewire-pulse plasma5-themes-sweet-full-git plasma5-themes-sweet-kde-git tokyonight-gtk-theme-git polkit-gnome polkit-kde-agent power-profiles-daemon qt5-wayland qt6-wayland sddm sddm-theme-sweet-git starship swappy swaync find-the-command sweet-cursors-hyprcursor-git sweet-folders-icons-git awww tumbler waybar waybar-module-pacman-updates-git wireplumber wlogout walker yad ttf-dejavu-nerd ttf-jetbrains-mono ttf-jetbrains-mono-nerd ttf-noto-nerd ttf-noto-emoji-monochrome ttf-nerd-fonts-symbols ttf-nerd-fonts-symbols-common ttf-nerd-fonts-symbols-mono
```

---

## 💡 Notes

- If you are using an **SDDM theme other than Sweet6**:
  - Create a default background image named **`default`**
  - Set the SDDM theme name according to your preference
- Designed for **Wayland + Hyprland**
- Focused on a **KDE-like appearance** with a lightweight workflow
