{ config, pkgs,inputs, ... }:

{
users.users.gordy = {
    isNormalUser = true;
    description = "Gordon Campbell";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
    packages = with pkgs; [
    #  thunderbird
       brave
       chromium
       cine
       discord
       devenv
       flameshot
       gimp3
       inkscape
       podman-desktop
       distrobox
       distroshelf
       ptyxis
       vscode-fhs
       showtime
       gnome-tweaks
       gnome-extension-manager
       fastfetch
       starship
#  utilities 
       mission-center
#     inputs.helix.packages."${pkgs.system}".helix
#      inputs.zoo.packages."${pkgs.system}".zoo
#      inputs.kcl-language-server.packages."${pkgs.system}".kcl-language-server
#  extensions
      gnomeExtensions.blur-my-shell
      gnomeExtensions.dash-to-dock
      gnomeExtensions.caffeine



    ];
 };
}
