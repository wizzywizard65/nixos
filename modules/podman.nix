{ config, pkgs,inputs, ... }:


{

  virtualisation.podman = {
   enable = true;
   autoPrune.enable = true;
   dockerCompat = true;

  };
  
  virtualisation.containers.enable = true;
  virtualisation.containers.registries.search = [
    "docker.io"
    "ghcr.io"
  ];
  
  # 2. Enable the timer explicitly
  systemd.timers."podman-auto-update" = {
    wantedBy = [ "timers.target" ];
    timerConfig = {
      OnCalendar = "daily";
      Persistent = true;
    };
  };
<<<<<<< HEAD
 
=======
  virtualisation.libvirtd.enable = true;
  virtualisation.libvirtd.qemu = {
  swtpm.enable = true;
};
virtualisation.spiceUSBRedirection.enable = true;

>>>>>>> 3a9a3c21bc3a0cdbd3c1c848d0887aced61a33ec
}
