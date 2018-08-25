{ compiler ? "ghc843" }:

let
  # SEE: https://nixos.wiki/wiki/FAQ/Pinning_Nixpkgs
  pkgs = let
     hostPkgs = import <nixpkgs> {};
     pinnedVersion = hostPkgs.lib.importJSON ./nixpkgs-version.json;
     pinnedPkgs = hostPkgs.fetchFromGitHub {
       owner = "NixOS";
       repo = "nixpkgs-channels";
       inherit (pinnedVersion) rev sha256;
     };
  in import pinnedPkgs {};

  cp = pkgs.haskell.packages.${compiler}.callPackage;
in
  cp ./default.nix {}
