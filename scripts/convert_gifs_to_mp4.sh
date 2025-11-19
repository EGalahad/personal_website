#!/usr/bin/env bash
set -euo pipefail

# Convert all GIFs under the given root (default: public/images) to MP4,
# ready for web playback (faststart + H.264 + yuv420p).

ROOT="${1:-public/images}"
FPS="${FPS:-24}"
CRF="${CRF:-23}"
PRESET="${PRESET:-medium}"

shopt -s globstar nullglob

if ! command -v ffmpeg >/dev/null 2>&1; then
  echo "ffmpeg is required but not found in PATH" >&2
  exit 1
fi

converted=0
for gif in "$ROOT"/**/*.gif; do
  [[ -e "$gif" ]] || continue
  dir="$(dirname "$gif")"
  base="$(basename "$gif" .gif)"
  out="$dir/$base.mp4"

  echo "Converting: $gif -> $out"
  ffmpeg -y -hide_banner -loglevel warning -i "$gif" \
    -movflags +faststart \
    -vf "fps=${FPS},scale=trunc(iw/2)*2:trunc(ih/2)*2" \
    -c:v libx264 -preset "$PRESET" -crf "$CRF" -pix_fmt yuv420p \
    -an "$out"

  ((converted += 1))
done

echo "Done. Converted $converted file(s)."
