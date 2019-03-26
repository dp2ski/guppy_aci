-- -*- lua -*-
------------------------------------------------------------------------
-- guppy
------------------------------------------------------------------------

help([[
Guppy is a bioinoformatic's toolkit that enables real-time basecalling and several post-processing features that works on Oxford Nanopore Technologies' sequencing platforms.
]])

-- Whatis description
whatis('Description: Guppy is a bioinoformatic\'s toolkit that enables real-time basecalling and several post-processing features that works on Oxford Nanopore Technologie\'s sequencing platforms.')
whatis('URL: https://community.nanoporetech.com/protocols/Guppy-protocol-preRev/v/gpb_2003_v1_revi_14dec2018')
whatis('singularity pull ')
unsetenv("LD_PRELOAD")
local guppy_baseloader = [==[
/usr/bin/singularity run /path/to/singularity/image "$@";
]==]

set_shell_function("guppy_baseloader",guppy_baseloader,guppy_baseloader)