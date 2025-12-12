lib: oklch: rgb: theme: let
  mapThemeHexAttrs = fn:
    lib.attrsets.mapAttrs (_: value: value |> oklch.convertToRgb |> rgb.toHex |> fn) theme;
in {
  asHexLiterals = mapThemeHexAttrs (value: "0x${value}");
  asHexStrings = mapThemeHexAttrs (value: "#${value}");
  asRgbLiterals = mapThemeHexAttrs (value: "rgb(${value})");
  noPrefix = mapThemeHexAttrs (value: value);
}
