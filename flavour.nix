{ stdenv }:
stdenv.mkDerivation {
  # Metadata
  pname = "gruvbox.yazi";
  version = "1.0";

  # Source
  src = ./src/.;

  # Installation
  installPhase = ''
    mkdir -p $out
    cp $src/* $out
  '';
}
