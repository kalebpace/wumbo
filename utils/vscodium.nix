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
    viktorqvarfordt.vscode-pitch-black-theme
    golang.go
  ] ++ vscode-utils.extensionsFromVscodeMarketplace [
    {
      name = "gitlens";
      publisher = "eamodio";
      version = "latest";
      sha256 = "sha256-fPp5WHRs98cXuEBJ41fzuovz5GsJDvyVaIgb56bjbVA=";
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
      sha256 = "sha256-kczkVm847COmpNtUJI5lsZIuM7qAU6UgE8SCj8ZhIaA=";
    }
  ];
}
 
