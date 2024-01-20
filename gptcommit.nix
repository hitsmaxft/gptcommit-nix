{
  pkgs
  ,naersk-lib
  , pversion ? "v0.5.14"
  ,src ? pkgs.fetchzip {
    name = "src";
    url = "https://github.com/zurawiki/gptcommit/archive/refs/tags/${pversion}.tar.gz";
    hash = "sha256-xjaFr1y2Fd7IWbJlegnIsfS5/oMJYd6QTnwp7IK17xM=";
  }
,... }:
  naersk-lib.buildPackage "${src}/."

