{ pkgs }:

with pkgs;

python3Packages.buildPythonApplication {
  pname = "sample-flask";
  version = "1.0.0";
  src = lib.cleanSource ./.;
  propagatedBuildInputs = [ python3Packages.flask ];
}
