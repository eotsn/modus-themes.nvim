{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  nativeBuildInputs = with pkgs.buildPackages; [
    lua5_4_compat
    lua54Packages.fennel
  ];
}
