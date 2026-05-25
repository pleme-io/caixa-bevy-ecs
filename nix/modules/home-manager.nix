# nix/modules/home-manager.nix — auto-generated from bevy_ecs.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.bevy_ecs; in {
  options.programs.bevy_ecs = {
    enable = lib.mkEnableOption "bevy_ecs";
    package = lib.mkOption { type = lib.types.package; default = pkgs.bevy_ecs or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
