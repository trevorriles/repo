{ system ? builtins.currentSystem, ... }:
let
  sources = import ../../nix/sources.nix;
  pkgs =import sources.nixpkgs { inherit system; };
  app = pkgs.callPackage ./app.nix { };
in app

