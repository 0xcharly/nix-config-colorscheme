# Implementation inspired from https://github.com/Evercoder/culori
# MIT License: Copyright (c) 2018 Dan Burzo

inputs:
let
  inherit (inputs.nix-math.lib) math;
  inherit (inputs.nixpkgs.lib.attrsets) mapAttrs;
  inherit (inputs.nixpkgs.lib.strings) concatStrings;
  inherit (inputs.nixpkgs.lib.trivial) toHexString;

  linearInterpolator =
    {
      r ? 0,
      g ? 0,
      b ? 0,
    }:
    let
      lerp =
        a: b: t:
        a + t * (b - a);
      clamp =
        min: max: value:
        if value < min then
          min
        else if value > max then
          max
        else
          value;
      interpolate = _: t: lerp 0 255 (clamp 0 1 t);
    in
    mapAttrs interpolate { inherit r g b; };

  convertRgbToHex =
    rgb:
    let
      toTwoBytesHex =
        value:
        let
          rounded = math.round value;
        in
        if rounded < 16 then "0${toHexString rounded}" else toHexString rounded;
    in
    with (linearInterpolator rgb);
    concatStrings (
      map toTwoBytesHex [
        r
        g
        b
      ]
    );
in
convertRgbToHex
