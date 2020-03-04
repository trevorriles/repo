let 
  sources = import ./nix/sources.nix;
  customPkgs = self: super: {
    # local projects
    trevorriles = {
      sample-flask = import ./services/sample-flask/default.nix { pkgs = self; };
    };
    # external repos
    reference-api = import sources.reference-api { pkgs = self; };
  };
in { ... } @ args: import sources.nixpkgs (args // {
  overlays = [ customPkgs ];
})
