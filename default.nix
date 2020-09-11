{ pkgs ? import <nixpkgs> {}
}:
pkgs.dockerTools.buildLayeredImage {
  name = "only-hello";
  config = {
    platforms = [];
  };
  contents = [ pkgs.hello ];
}
