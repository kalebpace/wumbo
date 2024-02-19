### Setup

- Use the Nix installer from [Determinate Systems](https://github.com/DeterminateSystems/nix-installer)

- cd into the root of this project and build the rust or zig based projects with
```bash
nix build .#component-rs
nix build .#doink
```

- To get a shell with all the toolchains needed for a given project run:
```bash
nix develop .#component-rs
nix develop .#doink
```

- To run the default command for a project
```bash
nix run .#doink
```
