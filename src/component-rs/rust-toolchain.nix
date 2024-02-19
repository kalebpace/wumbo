{ pkgs }:
with pkgs.fenix; fromToolchainFile {
  file = ./rust-toolchain.toml;
  sha256 = "sha256-e4mlaJehWBymYxJGgnbuCObVlqMlQSilZ8FljG9zPHY=";
}
