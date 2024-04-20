{
  inputs,
  config,
  ...
}:
{
  config.home.stateVersion = "22.11";
  imports = [
    inputs.nix-index-db.hmModules.nix-index
    inputs.barbie.homeManagerModule
    inputs.schizofox.homeManagerModule
    inputs.impermanence.nixosModules.home-manager.impermanence
    inputs.hyprlock.homeManagerModules.default
    inputs.hypridle.homeManagerModules.default
    
    ./packages.nix
    ./cli
    ./desktop
  ];
}