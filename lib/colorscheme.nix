lib: oklch: rgb: theme: let
  mapHexAttrs = fn:
    lib.attrsets.mapAttrs (_: value: fn (rgb.toHex (oklch.convertToRgb value)));
in {
  asHexLiterals = mapHexAttrs (value: "0x${value}") theme;
  asHexStrings = mapHexAttrs (value: "#${value}") theme;
  noPrefix = mapHexAttrs (value: value) theme;
}
