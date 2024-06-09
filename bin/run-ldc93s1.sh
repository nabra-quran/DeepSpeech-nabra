#!/bin/sh
set -xe
if [ ! -f DeepSpeech.py ]; then
    echo "Please make sure you run this from DeepSpeech's top level directory."
    exit 1
fi;

if [ ! -f "data/ldc93s1/ldc93s1.csv" ]; then
    echo "Downloading and preprocessing LDC93S1 example data, saving in ./data/ldc93s1."
    python -u bin/import_ldc93s1.py ./data/ldc93s1
fi;

if [ -d "${COMPUTE_KEEP_DIR}" ]; then
    checkpoint_dir=$COMPUTE_KEEP_DIR
else
    checkpoint_dir=$(python -c 'from xdg import BaseDirectory as xdg; print(xdg.save_data_path("deepspeech/ldc93s1"))')
fi

# Force only one visible device because we have a single-sample dataset
# and when trying to run on multiple devices (like GPUs), this will break
export CUDA_VISIBLE_DEVICES=0

python -u DeepSpeech.py --noshow_progressbar \
  python3 DeepSpeech.py \
 --train_files data/data61/train.csv \
 --dev_files data/data61/dev.csv \
 --test_files data/data61/test.csv \
--train_batch_size 64 \
 --test_batch_size 64 \
  --dev_batch_size 64 \
 --n_hidden 512 \
 --epochs 100 \
 --checkpoint_dir data/data61//checkpoint \
 --export_dir data/data61//model \
 --alphabet_config_path data/data61/quran-uthmani.txt \
 --scorer data/data61/lm/quran.scorer
 --checkpoint_dir data/data61/checkpoint \
 --export_dir data/data61/model \
 --alphabet_config_path data/data61/quran-uthmani.txt \
 --scorer data/data61/lm/quran.scorer\
--learning_rate 0.0001 \ --dropout_rate 0.5 \
  "$@"
