# nix/modules/darwin.nix — auto-generated from bevy_ecs.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.services.bevy_ecs; in {
  options.services.bevy_ecs = {
    enable = lib.mkEnableOption "bevy_ecs";
    package = lib.mkOption { type = lib.types.package; default = pkgs.bevy_ecs or null; };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
