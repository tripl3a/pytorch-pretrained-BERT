#!/usr/bin/env bash

# Prediction from classifier

# Once you have trained your classifier you can use it in inference mode by using the --do_predict=true command.
# You need to have a file named test.tsv in the input folder.
# Output will be created in file called test_results.tsv in the output folder.
# Each line will contain output for each sample, columns are the class probabilities.

export WORK_DIR=/home/aallhorn
export TASK_NAME=TLHD

export BERT_BASE_DIR=$WORK_DIR/output
export TRAINED_CLASSIFIER=$WORK_DIR/output/pytorch_model.bin

python ../examples/run_classifier.py \
  --task_name=$TASK_NAME \
  --do_predict=true \
  --data_dir=$WORK_DIR/data \
  --vocab_file=$BERT_BASE_DIR/vocab.txt \
  --bert_config_file=$BERT_BASE_DIR/config.json \
  --init_checkpoint=$TRAINED_CLASSIFIER \
  --max_seq_length=128 \
  --output_dir=$WORK_DIR/pred_output