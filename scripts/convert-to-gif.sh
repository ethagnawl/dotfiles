#!/usr/bin/env bash

set -euo pipefail

# A small, unoptimized, generic script to convert a movie file to a gif.
# The movie is provided via the `movie` env var and the resulting gif will be
# named $movie.gif

# Usage:
# movie=/path/to/foo.mp4 $PATH/convert-to-gif.sh

ffmpeg -ss 40 -t 2 -i $movie -vf "fps=10,scale=640:-1:flags=lanczos,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" -loop 0 "$movie.gif"
