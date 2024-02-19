{ pkgs }:
with pkgs;
vscode-with-extensions.override {
  vscode = vscodium;
  vscodeExtensions = with vscode-extensions; [
    jnoortheen.nix-ide
    arrterian.nix-env-selector
    asvetliakov.vscode-neovim
    matklad.rust-analyzer
    tamasfe.even-better-toml
    serayuzgur.crates
  ] ++ vscode-utils.extensionsFromVscodeMarketplace [
    {
      name = "gitlens";
      publisher = "eamodio";
      version = "latest";
      sha256 = "sha256-6UJRjyMe9XqVduQ9GaKanEN28dxj05v9Oo/xyM/7LN8=";
    }
    {
      name = "vscode-wasm";
      publisher = "dtsvet";
      version = "latest";
      sha256 = "sha256-zs7E3pxf4P8kb3J+5zLoAO2dvTeepuCuBJi5s354k0I=";
    }
    {
      name = "vscode-zig";
      publisher = "ziglang";
      version = "latest";
      sha256 = "sha256-F6MDfVwmOpq4hgmIh0k9UW/ziAeT9aenri5E5z2mGw0=";
    }
  ];
}
 
