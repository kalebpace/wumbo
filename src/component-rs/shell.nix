{ pkgs }: 
let
  default = import ./default.nix { inherit pkgs; };
  rust-toolchain = import ./rust-toolchain.nix { inherit pkgs; };
in
with pkgs; (mkShell.override { stdenv = stdenvNoCC; } {
  inherit (default) buildInputs;
  nativeBuildInputs = default.nativeBuildInputs ++ [
    rust-toolchain
    rust-analyzer-nightly
  ];

  shellHook = ''
    # cargo install --quiet --root .cargo wasm-server-runner
    PS1="(${default.pname}) ->\033[01;34m\] [\W]\[\033[00m\] $ "
    export PS1

    cd ./src/component-rs
  '';
})