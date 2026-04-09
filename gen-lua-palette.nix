let
  flake = builtins.getFlake (toString ./.);
  inherit (flake.inputs.nixpkgs) lib;
  inherit (flake.lib) converters palette;

  gen-lua-palette-entry = name: value: "['${name}'] = ${value},";
in
''
  local P = {
    ${lib.concatStringsSep "\n  " (
      lib.mapAttrsToList gen-lua-palette-entry (converters.asHexLiterals palette.tailwind)
    )}
  }
''
