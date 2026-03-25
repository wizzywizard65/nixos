{ 
      description = "My flakes configuration";

      inputs = {
        nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
        flake-utils.url = "github:numtide/flake-utils";
#        zoo.url = "github:KittyCAD/cli";
#        kcl-language-server.url = "github:kittyCAD/modeling-app";
        # helix editor, use the master branch
   # helix.url = "github:helix-editor/helix/master";
      };

      outputs = inputs@{ self, nixpkgs,flake-utils, ... }:
        {
          nixosConfigurations = {
            nixos = nixpkgs.lib.nixosSystem {
              system = "x86_64-linux";
              specialArgs = { inherit inputs; };
              modules = [ ./configuration.nix
                          ./modules/packages.nix 
                          ./modules/podman.nix 
                          ./modules/services.nix];
            };
          };
        };
    }
