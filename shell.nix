let pinned-nixpkgs = builtins.fetchGit
    {
        url = "https://github.com/nixos/nixpkgs";
        ref = "master";
        rev = "a41a49aa642f4ae4980b07cf4c3e7c5f4c82f88d";
    };
in with import pinned-nixpkgs {};
callPackage (import ./default.nix) {}
