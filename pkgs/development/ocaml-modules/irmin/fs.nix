{ lib, buildDunePackage, irmin, irmin-test }:

buildDunePackage rec {

  pname = "irmin-fs";

  inherit (irmin) version src;

  propagatedBuildInputs = [ irmin ];

  checkInputs = lib.optional doCheck irmin-test;

  doCheck = true;

  meta = irmin.meta // {
    description = "Generic file-system backend for Irmin";
  };

}


