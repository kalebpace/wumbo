{ pkgs }:
with pkgs;
let
  wasiSnapshotPreview1WASM = builtins.fetchurl {
    url = "https://github.com/bytecodealliance/wasmtime/releases/download/v18.0.1/wasi_snapshot_preview1.command.wasm";
    sha256 = "sha256:06a89r6svh9zsnyicfy8rxagp56cxvmxskpvk74qiiqcc2vhmp4p";
  };

  nativeBuildInputs = [
    go
    (tinygo.overrideAttrs (oldAttrs: rec {
      version = "0.31.2";
      src = fetchFromGitHub {
        rev = "v${version}";
        owner = "tinygo-org";
        repo = "tinygo";
        hash = "sha256-e0zXxIdAtJZXJdP/S6lHRnPm5Rsf638Fhox8XcqOWrk="; # 0.31.2
        fetchSubmodules = true;
      };
      patches = [
        oldAttrs.patches
        ./wasilibc.patch
      ];
    }))
    darwin.CF
    darwin.Security
    darwin.Libc
    wasmtime
    wasm-tools
    wit-bindgen
  ];
in
stdenv.mkDerivation {
  name = "component-tinygo";
  src = ./.;
  phases = [ "unpackPhase" "buildPhase" "installPhase" "checkPhase" ];
  inherit nativeBuildInputs;
  buildPhase = ''
    export HOME=$TMPDIR
    mkdir -p $out
    
    cd ./src

    go generate
    tinygo build -target=wasi -o main.wasm my-component.go
    wasm-tools component embed --world host ../wit main.wasm -o main.embed.wasm

    cp ${wasiSnapshotPreview1WASM} ./wasi_snapshot_preview1.command.wasm
    wasm-tools component new main.embed.wasm --adapt wasi_snapshot_preview1.command.wasm -o main.component.wasm
    
    # DEBUG
    wasm-tools print main.component.wasm > main.component.wat
  '';
  
  doCheck = true;
  checkPhase = ''
    wasm-tools validate main.component.wasm --features component-model
  '';

  installPhase = ''
    cp -r ./ $out/
  '';
}
