{ pkgs }:
with pkgs.fenix; fromToolchainFile {
  file = ./rust-toolchain.toml;
  sha256 = "sha256-3St/9/UKo/6lz2Kfq2VmlzHyufduALpiIKaaKX4Pq0g=";
}
