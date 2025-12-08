lib: math: let
  linearInterpolator = {
    r ? 0,
    g ? 0,
    b ? 0,
  }: let
    lerp = a: b: t: a + t * (b - a);
    clamp = min: max: value:
      if value < min
      then min
      else if value > max
      then max
      else value;
    interpolate = _: t: lerp 0 255 (clamp 0 1 t);
  in
    lib.attrsets.mapAttrs interpolate {inherit r g b;};

  toHex = rgb: let
    toHex = value: let
      rounded = math.round value;
    in
      if rounded < 16
      then "0${lib.trivial.toHexString rounded}"
      else lib.trivial.toHexString rounded;
  in
    lib.concatStrings (builtins.map toHex (with (linearInterpolator rgb); [r g b]));
in {
  inherit toHex;
}
