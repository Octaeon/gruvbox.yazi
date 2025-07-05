{
  description = "A Yazi flavour with a Gruvbox colour scheme";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs =
    { nixpkgs, ... }:
    let
      system = "x86_64-linux";

      pkgs = import nixpkgs { inherit system; };

      flavour = pkgs.callPackage ./flavour.nix { };
    in
    {
      packages.x86_64-linux = rec {
        gruv = flavour;
        default = gruv;
      };
    };
}
