{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    utils.url = "github:numtide/flake-utils";

    zig.url = "github:mitchellh/zig-overlay";
    zig.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { nixpkgs, utils, zig, ... }: utils.lib.eachDefaultSystem (system: 
  let
    pkgs = nixpkgs.legacyPackages.${system};
    zigpkgs = zig.packages.${system};
  in {
    devShells.default = pkgs.mkShell {
      packages = [
        zigpkgs.master
      ];
    };
  });
}
