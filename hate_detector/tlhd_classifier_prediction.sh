#!/usr/bin/env bash

# Prediction from classifier

# Once you have trained your classifier you can use it in inference mode by using the --do_predict=true command.
# You need to have a file named test.tsv in the input folder.
# Output will be created in file called test_results.tsv in the output folder.
# Each line will contain output for each sample, columns are the class probabilities.

export WORK_DIR=/home/aallhorn
export TASK_NAME=TLHD

export BERT_BASE_DIR=$WORK_DIR/output
export BERT_MODEL=$WORK_DIR/output/pytorch_model.bin

cd $WORK_DIR/code/pytorch-pretrained-BERT/hate_detector &&
python ../examples/run_classifier.py \
  --task_name=$TASK_NAME \
  --do_eval \
  --data_dir=$WORK_DIR/data \
  --bert_model=$BERT_MODEL \
  --max_seq_length=128 \
  --output_dir=$WORK_DIR/pred_output