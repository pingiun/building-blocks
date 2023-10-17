{
  description = "Building blocks for Nix projects";

  # Flake inputs
  inputs = {
    flake-schemas = {
      url = "https://flakehub.com/f/DeterminateSystems/flake-schemas/*.tar.gz";
    };

    nixpkgs = {
      url = "https://flakehub.com/f/NixOS/nixpkgs/*.tar.gz";
    };
  };

  outputs = { self, flake-schemas, nixpkgs }: {
    schemas = flake-schemas.schemas;
  };
}
