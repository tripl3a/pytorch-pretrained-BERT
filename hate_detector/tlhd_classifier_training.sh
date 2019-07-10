#!/usr/bin/env bash

export WORK_DIR=/home/aallhorn
export TASK_NAME=TLHD

cd $WORK_DIR/code/pytorch-pretrained-BERT/hate_detector &&
python ../examples/run_classifier.py \
  --task_name $TASK_NAME \
  --data_dir $WORK_DIR/data \
  --output_dir $WORK_DIR/output \
  --do_train \
  --do_eval \
  --bert_model bert-base-german-cased \
  --max_seq_length 128 \
  --train_batch_size 32 \
  --learning_rate 2e-5 \
  --num_train_epochs 3.0