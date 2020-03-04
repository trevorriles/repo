let
  default = import ./default.nix {};
  trevorriles = default.trevorriles;
in {
  inherit (trevorriles) sample-flask;
}
