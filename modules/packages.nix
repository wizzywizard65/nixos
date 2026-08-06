{ config, pkgs,inputs, ... }:

{
users.users.gordy = {
    isNormalUser = true;
    description = "Gordon Campbell";
    extraGroups = [ "networkmanager" "wheel" "docker" "libvirtd"];
    packages = with pkgs; [
    #  thunderbird
       brave
       chromium
       cine
       discord
       devenv
       element-desktop
       flameshot
       gimp-with-plugins
       inkscape
       podman-desktop
       podman-compose
       kubectl
       distrobox
       distroshelf
       ptyxis
       vscode-fhs
       showtime
       gnome-tweaks
       gnome-extension-manager
       fastfetch
       starship
       nixfmt
       deja-dup
       direnv
       
# cockpit
       cockpit
       cockpit-files
       cockpit-podman
       cockpit-machines
#  utilities 
       mission-center
<<<<<<< HEAD
       mousam
=======
       virt-manager
       virt-viewer
       qemu     
       mousam
       btop
>>>>>>> 3a9a3c21bc3a0cdbd3c1c848d0887aced61a33ec
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
