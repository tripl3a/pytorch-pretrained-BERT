#!/usr/bin/env bash

export WORK_DIR=/tlhd/models/bert01
export CODE_DIR=/home/arndt/git-reps/pytorch-pretrained-BERT
export MODEL_DIR=/tlhd/models/bert01/output
export TASK_NAME=TLHD

cd $CODE_DIR/hate_detector &&
python ../examples/run_classifier_test.py \
  --task_name $TASK_NAME \
  --data_dir $WORK_DIR/data_test \
  --output_dir $WORK_DIR/output_test \
  --do_eval \
  --finetuned_model_dir $MODEL_DIR \
  --max_seq_length 128