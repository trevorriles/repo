let
  default = import ./default.nix {};
in {
  inherit (default) trevorriles.sample-flask;
}
