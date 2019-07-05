#!/usr/bin/env bash

# Prediction from classifier

# Once you have trained your classifier you can use it in inference mode by using the --do_predict=true command.
# You need to have a file named test.tsv in the input folder.
# Output will be created in file called test_results.tsv in the output folder.
# Each line will contain output for each sample, columns are the class probabilities.

# TODO: edit example according to own needs

export BERT_BASE_DIR=/path/to/bert/uncased_L-12_H-768_A-12
export GLUE_DIR=/path/to/glue
export TRAINED_CLASSIFIER=/path/to/fine/tuned/classifier

python ../examples/run_classifier.py \
  --task_name=MRPC \
  --do_predict=true \
  --data_dir=$GLUE_DIR/MRPC \
  --vocab_file=$BERT_BASE_DIR/vocab.txt \
  --bert_config_file=$BERT_BASE_DIR/bert_config.json \
  --init_checkpoint=$TRAINED_CLASSIFIER \
  --max_seq_length=128 \
  --output_dir=/tmp/mrpc_output/