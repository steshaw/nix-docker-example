FROM nixos/nix:2.3.6

RUN nix-env -iA \
  nixpkgs.docker \
  nixpkgs.gnutar \
