lib: oklch: rgb: theme: let
  mapHexAttrs = fn:
    lib.attrsets.mapAttrs (_: value: fn (rgb.toHex (oklch.convertToRgb value)));

  mapToHexLiterals = mapHexAttrs (value: "0x${value}");
  mapToHexStrings = mapHexAttrs (value: "#${value}");
in {
  asHexLiterals = mapToHexLiterals theme;
  asHexStrings = mapToHexStrings theme;
}
