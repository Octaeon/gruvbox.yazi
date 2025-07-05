{ stdenv }:
stdenv.mkDerivation {
  # Metadata
  pname = "gruvbox.yazi";
  version = "1.0";

  # Source
  src = ./.;

  # Installation
  installPhase = ''
    mkdir -p $out
    cp $src/src/* $out
    cp $src/README.md $out
  '';
}
