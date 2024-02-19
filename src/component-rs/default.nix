{ pkgs }:
let
  rust-toolchain = import ./rust-toolchain.nix { inherit pkgs; };
  
  buildInputs = with pkgs; [ ]
    ++ lib.optional stdenv.isDarwin [
    libiconv
    darwin.apple_sdk_11_0.frameworks.CoreFoundation
    darwin.apple_sdk_11_0.frameworks.Security
  ];
in
with pkgs; (makeRustPlatform {
  cargo = rust-toolchain;
  rustc = rust-toolchain;
}).buildRustPackage {
  pname = "hello-rust";
  version = "0.1.0";
  src = ./.;

  nativeBuildInputs = [
    cargo-component
  ];

  inherit buildInputs;
  
  buildPhase = ''
    cargo component build
  '';

  installPhase = ''
    mkdir -p $out/
    find . -name "*.wasm" -exec cp {} $out/ \;
  '';

  cargoLock.lockFile = ./Cargo.lock;
}
