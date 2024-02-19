{ pkgs }: 
let
  rust-toolchain = import ./rust-toolchain.nix { inherit pkgs; };
  project-name = (import ./default.nix { inherit pkgs; }).pname;
in
with pkgs; (mkShell.override { stdenv = stdenvNoCC; } {
  nativeBuildInputs = [
    rust-toolchain
    rust-analyzer-nightly
    cargo-component
    wasmtime
    # wizer
  ];

  shellHook = ''
    # cargo install --quiet --root .cargo wasm-server-runner
    PS1="(${project-name}) ->\033[01;34m\] [\W]\[\033[00m\] $ "
    export PS1

    cd ./src/component-rs
  '';
})