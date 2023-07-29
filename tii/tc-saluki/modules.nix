{ pkgs, lib, ... }: {
  boot = {
    kernelPackages = pkgs.linuxPackagesFor (pkgs.callPackage ./linux { });
    initrd.includeDefaultModules = lib.mkForce false;
  };
}
