let 
  sources = import ./nix/sources.nix;
  pkgs = import sources.nixpkgs { };
  customPkgs = self: super: {
    # local projects
    trevorriles = {};
    # external repos
    reference-api = import sources.reference-api { pkgs = self; };
  };
in { ... } @ args: import sources.nixpkgs (args // {
  overlays = [ customPkgs ];
})
