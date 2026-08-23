{ config, pkgs,inputs, ... }:

{

  virtualisation.podman = {
   enable = true;
   autoPrune.enable = true;
   dockerCompat = true;

  };
  
  virtualisation.containers.enable = true;
  #virtualisation.containers.registries.search = [
   # "docker.io"
  #  "ghcr.io"


  virtualisation.containers.registries.settings = {
    unqualified-search-registries = [ "docker.io" "quay.io" ];
  
  # 2. Enable the timer explicitly
  systemd.timers."podman-auto-update" = {
  enable = true;
  description = "Periodic Podman container auto-update";
  wantedBy = [ "timers.target" ];
  timerConfig = {
    OnCalendar = "daily";
    Persistent = true;
      };
     };
    };
  systemd.services."podman-auto-update" = {
  serviceConfig = {
    Type = "oneshot";
    ExecStart = "${pkgs.podman}/bin/podman auto-update";
  };
};
systemd.timers."podman-auto-update".wantedBy = [ "timers.target" ];
  
  
 

  virtualisation.libvirtd.enable = true;
  virtualisation.libvirtd.qemu = {
  swtpm.enable = true;
};
virtualisation.spiceUSBRedirection.enable = true;

}

