{ callPackage, hlint }:
{
  pronto = callPackage ./pronto {};
  inherit hlint;
}
