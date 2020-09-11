{ pkgs ? import <nixpkgs> { } }:

pkgs.dockerTools.buildLayeredImage {
  name = "hello-docker";
  config = {
    Cmd = [ "${pkgs.hello}/bin/hello" ];
  };
}
