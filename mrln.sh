#!/bin/bash -e

# eval "$(conda shell.bash hook)"
# conda activate mrln_et
###################################

merlin_dir=$(pwd)
temp_dir=/home/indrek/mrln_et_iw/temp
voice=evas_art_48k
in_text=/home/indrek/mrln_et_iw/in.txt
out_wav=/home/indrek/mrln_et_iw/out.wav

echo "synthesizing ..."
python ${merlin_dir}/src/run_merlin.py ${merlin_dir} ${temp_dir} ${voice} ${in_text} ${out_wav}
echo "done"
