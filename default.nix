{ pkgs ? import <nixpkgs> {
    system = "x86_64-linux";
  }
}:

pkgs.dockerTools.buildLayeredImage {
  name = "hello-docker";
  config = {
    Cmd = [ "${pkgs.hello}/bin/hello" ];
  };
}
