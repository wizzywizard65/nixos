{ config, pkgs,inputs, ... }:


{

  virtualisation.docker.enable = true;  
  virtualisation.podman = {
   enable = true;
   autoPrune.enable = true;
  };
  
  # 2. Enable the timer explicitly
  systemd.timers."podman-auto-update" = {
    wantedBy = [ "timers.target" ];
    timerConfig = {
      OnCalendar = "daily";
      Persistent = true;
    };
  };
}
