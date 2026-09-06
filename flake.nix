{
  description = "Abhinav GitHub Profile";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { nixpkgs, ... }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
      };
    in {
      devShells.${system}.default = pkgs.mkShell {
        packages = [
          pkgs.python313
          pkgs.python313Packages.pillow
          pkgs.python313Packages.numpy
          pkgs.python313Packages.opencv4
        ];
      };
    };
}
