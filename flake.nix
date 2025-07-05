{
  description = "A Yazi flavour with a Gruvbox colour scheme";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs =
    { nixpkgs, ... }:
    let
      pkgs = import nixpkgs { };

      flavour = pkgs.callPackage ./flavour.nix { };
    in
    {
      packages = rec {
        gruv = flavour;
        default = gruv;
      };
    };
}
