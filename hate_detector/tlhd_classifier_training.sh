#!/usr/bin/env bash

export TASK_NAME=TLHD
#export DATA_DIR=~/git-reps/transfer-learning-for-hatespeech-detection/data/modeling/gutefrage-q-del
#export OUT_DIR=/tmp
export DATA_DIR=/home/aallhorn/data
export OUT_DIR=/home/aallhorn/output

python ../examples/run_classifier.py \
  --task_name $TASK_NAME \
  --data_dir $DATA_DIR \
  --output_dir $OUT_DIR/$TASK_NAME \
  --do_train \
  --do_eval \
  --bert_model bert-base-german-cased \
  --max_seq_length 128 \
  --train_batch_size 32 \
  --learning_rate 2e-5 \
  --num_train_epochs 3.0