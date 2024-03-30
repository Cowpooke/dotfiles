{
  description = "Cowpooke flake";

  inputs = {
    nixpkgs.url = github:NixOS/nixpkgs/release-23.11;
  };

  outputs = { self, nixpkgs, ... }:
    let
      lib = nixpkgs.lib;
    in {
    nixosConfigurations = {
      nixos = lib.nixosSystem {
        system = "x86_64-linux";
        modules = [./configuration.nix];
      };
    };
  };
}
