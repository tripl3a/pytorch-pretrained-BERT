#!/usr/bin/env bash

if [ "$HOSTNAME" = "tripl3a-t440s" ]; then
    export WORK_DIR=/tlhd/models/bert02
    export MODEL_DIR=/tlhd/models/bert02/output
    export CODE_DIR=~/git-reps/pytorch-transformers
else
    export WORK_DIR=/home/aallhorn
    export MODEL_DIR=/home/aallhorn/output
    export CODE_DIR=/home/aallhorn/code/pytorch-transformers
fi

export TASK_NAME=TLHD

cd $CODE_DIR/hate_detector &&
python run_classifier.py \
  --task_name $TASK_NAME \
  --data_dir $WORK_DIR/data \
  --output_dir $WORK_DIR/output \
  --do_train \
  --do_eval \
  --bert_model bert-base-multilingual-cased \
  --max_seq_length 128 \
  --train_batch_size 32 \
  --learning_rate 2e-5 \
  --num_train_epochs 3.0