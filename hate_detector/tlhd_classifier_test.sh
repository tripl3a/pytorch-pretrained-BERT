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
python run_classifier_test.py \
  --task_name $TASK_NAME \
  --data_dir $WORK_DIR/data_test \
  --output_dir $WORK_DIR/output_test \
  --do_eval \
  --do_export \
  --finetuned_model_dir $MODEL_DIR \
  --max_seq_length 128