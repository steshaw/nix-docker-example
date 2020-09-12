{ pkgs ? import <nixpkgs> {
    system = "x86_64-linux";
  }
}:
pkgs.dockerTools.buildLayeredImage {
  name = "only-hello";
  contents = [ pkgs.hello ];
}
