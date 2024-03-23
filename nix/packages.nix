{self, ...}: {
  perSystem = {
    pkgs,
    self',
    ...
  }: {
    packages = {
      pridewie = pkgs.callPackage ./derivation.nix {inherit self;};
      default = self'.packages.pridewie;
    };
  };
}
