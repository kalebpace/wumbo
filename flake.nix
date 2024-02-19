{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    utils.url = "github:numtide/flake-utils";
    fenix = {
      url = "github:nix-community/fenix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, utils, fenix }:
    utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
          overlays = [ fenix.overlays.default ];
          config = {
            allowUnfree = true;
          };
        };
        vsCodeWithExtensions = import ./utils/vscodium.nix { inherit pkgs; };
        component-rs = import ./src/component-rs { inherit pkgs; };
        doink = import ./src/doink { inherit pkgs; };
        
        nodeDependencies = (pkgs.callPackage ./src/doink/js-utils/default.nix {}).nodeDependencies;
      in
      rec {
        packages = {
          default = component-rs;
          inherit component-rs;
          inherit doink;
        };

        devShells = {
          default = with pkgs; (mkShell.override { stdenv = stdenvNoCC; } {
            nativeBuildInputs = [
              vsCodeWithExtensions
              neovim
            ];
          });
          component-rs = (import ./src/component-rs/shell.nix { inherit pkgs; });
          doink = (import ./src/doink/shell.nix { inherit pkgs; });
        };
        
        apps = {
          default = {
            type = "app";
            program = toString (pkgs.writers.writeBash "default" ''
              ${pkgs.wasmtime}/bin/wasmtime run --wasm component-model ${component-rs}/component_rs.wasm
            '');
          };
          
          doink = {
            type = "app";
            program = toString (pkgs.writers.writeBash "doink" ''
              ${pkgs.nodejs}/bin/node ${packages.doink}/index.mjs
            '');
          };
        };
      }
    );

  nixConfig = {
    extra-sandbox-paths = [
      # Needed to build rust-analyzer-nightly on macOS
      # https://github.com/NixOS/nix/issues/9625
      "/private/etc/ssl/openssl.cnf"
    ];
    # allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
    #   "Xcode.app"
    # ];
  };
}
