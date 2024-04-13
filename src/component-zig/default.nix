{ pkgs }:
with pkgs;
let
  wasiSnapshotPreview1WASM = builtins.fetchurl {
    url = "https://github.com/bytecodealliance/wasmtime/releases/download/v18.0.1/wasi_snapshot_preview1.command.wasm";
    sha256 = "sha256:06a89r6svh9zsnyicfy8rxagp56cxvmxskpvk74qiiqcc2vhmp4p";
  };

  nativeBuildInputs = [
    zig
    (wasmtime.overrideAttrs (oldAttrs: rec {
      version = "18.0.1";
      src = fetchFromGitHub {
          owner = "bytecodealliance";
          repo = "wasmtime";
          rev = "v${version}";
          hash = "sha256-wCaDwaD/Xvm++PCrDmXo2Nqn9z07et8AhSI1e1527vc=";
          fetchSubmodules = true;
        };
      cargoDeps = oldAttrs.cargoDeps.overrideAttrs (lib.const {
        inherit src;
        outputHash = "sha256-yaoM1+DYXBP3RNksmyFfByzkx1R3wN/aHjKiMQAeb8I=";
      });
    }))
    (wasm-tools.overrideAttrs (oldAttrs: rec {
      version = "1.200.0";
      src = fetchFromGitHub {
          owner = "bytecodealliance";
          repo = "wasm-tools";
          rev = "v${version}";
          hash = "sha256-GuN70HiCmqBRwcosXqzT8sl5SRCTttOPIRl6pxaQiec=";
          fetchSubmodules = true;
        };
      cargoDeps = oldAttrs.cargoDeps.overrideAttrs (lib.const {
        inherit src;
        outputHash = "sha256-JH0dDUaHrJtFiU7grzwqBIHt31Fvhzo5B0rcH4IeyQs=";
      });
    }))
  ];
in
stdenv.mkDerivation {
  name = "component-zig";
  src = ./.;
  phases = [ "unpackPhase" "buildPhase" "installPhase" "checkPhase" ];
  inherit nativeBuildInputs;
  buildPhase = ''
    export XDG_CACHE_HOME=$(mktemp -d)
    mkdir -p $out
    
    cd ./src
    
    cp ${wasiSnapshotPreview1WASM} ./wasi_snapshot_preview1.wasm

    zig build-exe ./my-component.zig -target wasm32-wasi -rdynamic

    wasm-tools component embed ../wit/example.wit ./my-component.wasm -o ./embed.wasm

    wasm-tools component new ./embed.wasm -o ./final.wasm --adapt ./wasi_snapshot_preview1.wasm
    
    rm -rf $XDG_CACHE_HOME
  '';
  
  doCheck = true;
  checkPhase = ''
    wasm-tools validate ./final.wasm --features component-model
  '';
  
  installPhase = ''
    cp -r ./ $out/
  '';
}
