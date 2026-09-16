{
  pkgs ? import <nixpkgs> { },
}:
rec {
  brow6el = pkgs.callPackage ./pkg_brow6el.nix {
    inherit cef-binary;
  };
  cef-binary = pkgs.callPackage ./pkg_cef-binary.nix { };

}
