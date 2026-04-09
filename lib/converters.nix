lib: oklch: rgb:
let
  mapThemeHexAttrs =
    fn: palette: lib.attrsets.mapAttrs (_: value: fn (rgb.toHex (oklch.convertToRgb value))) palette;
in
{
  asHexLiterals = mapThemeHexAttrs (value: "0x${value}");
  asHexStrings = mapThemeHexAttrs (value: "#${value}");
  asRgbLiterals = mapThemeHexAttrs (value: "rgb(${value})");
  noPrefix = mapThemeHexAttrs (value: value);
}
