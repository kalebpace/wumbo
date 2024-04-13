{ pkgs }:
with pkgs;
let
  default = import ./default.nix { inherit pkgs; };
in
mkShell {
  inherit (default) buildInputs;
  nativeBuildInputs = default.nativeBuildInputs ++ [
    zls
  ];

  shellHook = ''
    PS1="(${default.name}) ->\033[01;34m\] [\W]\[\033[00m\] $ "
    export PS1

    cd ./src/component-zig
  '';
}
