{ pkgs }:
with pkgs;
let
  default = import ./default.nix { inherit pkgs; };
  project-name = (import ./default.nix { inherit pkgs; }).name;

  # Copy your local XCode to the nix store only once
  # nix-store --add-fixed --recursive sha256 /Applications/Xcode.app
  # nativeBuildInputs = with pkgs; [
  #   # TODO: DarwinSDKNotFound issue
  #   (zls.overrideAttrs (final: prev: {
  #     nativeBuildInputs = prev.nativeBuildInputs
  #       ++ [
  #       libiconv
  #       darwin.apple_sdk_11_0.frameworks.CoreFoundation
  #       darwin.apple_sdk_11_0.frameworks.Security
  #     ];
  #   }))
  # ];

in
mkShell.override { stdenv = pkgs.stdenvNoCC; } {
  inherit (default) buildInputs;
  nativeBuildInputs = default.nativeBuildInputs ++ [
    nodejs
    nodePackages.node2nix
  ];

  shellHook = ''
    PS1="(${project-name}) ->\033[01;34m\] [\W]\[\033[00m\] $ "
    export PS1

    cd ./src/component-zig
  '';
}
