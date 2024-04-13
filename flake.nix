{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    utils.url = "github:numtide/flake-utils";
    fenix = {
      url = "github:nix-community/fenix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    zig = {
      url = "github:mitchellh/zig-overlay";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, utils, fenix, zig }:
    utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
          overlays = [ 
            fenix.overlays.default
            zig.overlays.default
          ];
          config = {
            allowUnfree = true;
          };
        };
        vsCodeWithExtensions = import ./utils/vscodium.nix { inherit pkgs; };
        component-rs = import ./src/component-rs { inherit pkgs; };
        component-tinygo = import ./src/component-tinygo { inherit pkgs; };
        component-zig = import ./src/component-zig { inherit pkgs; };
        doink = import ./src/doink { inherit pkgs; };
      in
      rec {
        packages = {
          default = component-rs;
          inherit component-rs;
          inherit component-tinygo;
          inherit component-zig;
          inherit doink;
        };

        apps = {
          default = component-rs;
          component-rs = {
            type = "app";
            program = toString (pkgs.writers.writeBash "default" ''
              ${pkgs.wasmtime}/bin/wasmtime run --wasm component-model ${component-rs}/component_rs.wasm
            '');
          };
          
          component-tinygo = {
            type = "app";
            program = toString (pkgs.writers.writeBash "component-tinygo" ''
              ${pkgs.wasmtime}/bin/wasmtime run --wasm component-model ${component-tinygo}/main.component.wasm
            '');
          };

          component-zig = {
            type = "app";
            program = toString (pkgs.writers.writeBash "component-tinygo" ''
              ${pkgs.wasmtime}/bin/wasmtime run --wasm component-model ${component-zig}/main.component.wasm
            '');
          };
          
          doink = {
            type = "app";
            program = toString (pkgs.writers.writeBash "doink" ''
              ${pkgs.nodejs}/bin/node ${packages.doink}/index.mjs
            '');
          };
        };

        devShells = {
          default = with pkgs; (mkShell.override { stdenv = stdenvNoCC; } {
            nativeBuildInputs = [
              vsCodeWithExtensions
              neovim
            ];
          });
          component-rs = (import ./src/component-rs/shell.nix { inherit pkgs; });
          component-tinygo = (import ./src/component-tinygo/shell.nix { inherit pkgs; });
          component-zig = (import ./src/component-zig/shell.nix { inherit pkgs; });
          doink = (import ./src/doink/shell.nix { inherit pkgs; });
        };
      }
    );

  nixConfig = {
    extra-sandbox-paths = [
      # Needed to build rust-analyzer-nightly on macOS
      # https://github.com/NixOS/nix/issues/9625
      "/private/etc/ssl/openssl.cnf"
    ];
  };
}
