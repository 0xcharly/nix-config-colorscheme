# https://oklch.com
lib: math: let
  convertLchToLab = {
    l ? 0,
    c ? 0,
    h ? 0,
  }: {
    inherit l;
    a = c * (math.cos ((h / 180) * math.pi));
    b = c * (math.sin ((h / 180) * math.pi));
  };

  convertOklabToLrgb = {
    l ? 0,
    a ? 0,
    b ? 0,
  }: let
    L = math.pow (l + 0.3963377773761749 * a + 0.2158037573099136 * b) 3;
    M = math.pow (l - 0.1055613458156586 * a - 0.0638541728258133 * b) 3;
    S = math.pow (l - 0.0894841775298119 * a - 1.2914855480194092 * b) 3;
  in {
    r = 4.0767416360759574 * L - 3.3077115392580616 * M + 0.2309699031821044 * S;
    g = -1.2684379732850317 * L + 2.6097573492876887 * M - 0.3413193760026573 * S;
    b = -0.0041960761386756 * L - 0.7034186179359362 * M + 1.7076146940746117 * S;
  };

  convertLrgbToRgb = rgb: let
    sign = value:
      if value < 0
      then -1
      else 1;

    fn = _: value: let
      abs = math.abs value;
    in
      if abs > 0.0031308
      then (sign value) * (1.055 * (math.pow abs (1 / 2.4)) - 0.055)
      else value * 12.92;
  in
    lib.attrsets.mapAttrs fn rgb;

  convertOklchToRgb = oklch: oklch |> convertLchToLab |> convertOklabToLrgb |> convertLrgbToRgb;
in {
  convertToRgb = convertOklchToRgb;
}
