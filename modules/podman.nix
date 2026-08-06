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
 
}
