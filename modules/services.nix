{ config, pkgs,inputs, ... }:

{

services.fstrim.enable = true;
services.flatpak.enable = true;
services.xserver.enable = true;
services.printing.enable = true;

# Configure keymap in X11
  services.xserver.xkb = {
    layout = "gb";
    variant = "";
  };

# Configure console keymap
  console.keyMap = "uk";


services.displayManager.gdm.enable = true;
services.desktopManager.gnome.enable = true;

 services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
 };

services.cockpit = {
  enable = true;
  port = 9090;
  openFirewall = true; # Please see the comments section
  settings = {
    WebService = {
      AllowUnencrypted = true;
    };
  };
};

}
