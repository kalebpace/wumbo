{ pkgs }:
with pkgs.fenix; fromToolchainFile {
  file = ./rust-toolchain.toml;
  sha256 = "sha256-7QfkHty6hSrgNM0fspycYkRcB82eEqYa4CoAJ9qA3tU=";
}
