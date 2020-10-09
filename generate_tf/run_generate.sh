#!/usr/bin/env bash

python preprocess.py  \
        --raw_data_dir=../data/IMDB_raw/train.txt  \
        --output_base_dir=../data/proc_data/train_demo  \
        --data_type=sup   \
        --sub_set=train   \
        --sup_size=-1   \
        --vocab_file=../Chinese_BERT_model/vocab.txt \
        --max_seq_length=100


python preprocess.py  \
        --raw_data_dir=../data/IMDB_raw/test.txt  \
        --output_base_dir=../data/proc_data/dev_demo  \
        --data_type=sup   \
        --sub_set=dev  \
        --vocab_file=../Chinese_BERT_model/vocab.txt \
        --max_seq_length=100


python preprocess.py  \
        --raw_data_dir=../data/IMDB_raw/unsup.txt  \
        --aug_raw_data_dir=../data/IMDB_raw/unsup_aug.txt  \
        --output_base_dir=../data/proc_data/unsup_demo \
        --data_type=unsup   \
        --sub_set=unsup_in \
        --sup_size=-1   \
        --aug_ops=bt-0.9  \
        --aug_copy_num=0  \
        --vocab_file=../Chinese_BERT_model/vocab.txt \
        --max_seq_length=100


