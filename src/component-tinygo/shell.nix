{ pkgs }:
with pkgs;
let
  default = import ./default.nix { inherit pkgs; };
in
mkShell.override { stdenv = pkgs.llvmPackages_17.stdenv; } {
  inherit (default) buildInputs;
  nativeBuildInputs = default.nativeBuildInputs ++ [];

  shellHook = ''
    PS1="(${default.name}) ->\033[01;34m\] [\W]\[\033[00m\] $ "
    export PS1

    cd ./src/component-tinygo
  '';
}
