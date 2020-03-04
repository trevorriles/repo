{system ? "x86_64-linux" }:
let
  sources = import ../../nix/sources.nix;
  pkgs =import sources.nixpkgs { inherit system; };
  app = import ./app.nix { inherit pkgs; };
in
  pkgs.dockerTools.buildLayeredImage {
    name = "flask-sample";
    tag = "latest";
    contents = [ app ];
    config.Cmd = [ "sample-flask" ];
  }

