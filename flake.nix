{
  description = "Flake from a random person on the internet";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nh = { url = "github:viperML/nh"; };

  };

  outputs = inputs@{ self, nixpkgs, nh, ... }: {
    packages.x86_64-linux.nh = nh.packages.x86_64-linux.nh;
  };
}
