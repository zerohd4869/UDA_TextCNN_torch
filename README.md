# UDA(Unsupervised Data Augmentation) with TextCNN

## Requirements

**UDA** 
    
    python > 2.7
    tensorboard==1.13.1
    tensorflow-gpu==1.13.1
    numpy
    
**TextCNN**

    python > 3.6
    fire
    tqdm
    tensorboardX==2.1
    tensorflow-gpu==1.14.0
    pytorch==1.3.1+cu100
    pandas
    numpy
  

## Pre-works

#### - Download pre-trained BERT model and prepare your own  data
First, you have to download pre-trained BERT_base from Google's BERT repository. And unzip IMDb data

    bash download.sh
After running, you can get the pre-trained BERT_base_Uncased model at **/Chinese_BERT_model** director and **data/raw_data/**


## Example usage

**Step 1:  Preprocess-UDA**

First, you should get in the fold ```generate_tf/```, and then run sh.

change the following in the ```run_generate.sh``

    raw_data_dir
    output_base_dir
    sup_size
    vocab_file
    max_seq_length
        
        
```
cd generate_tf
bash run_generate.sh
```

**Step 2: Model-TextCNN**
 
 You can choose train mode
(train, train_eval) on non-uda.json or uda.json (default : train_eval).

- Non UDA  

change the following in the ```config/non-uda.json```:

    cuda
    max_seq_length 
    sup_data_dir 
    eval_data_dir
    pretrain_file 
    vocab 
    results_dir 
    
```
bash run_model_base.sh
```

-  UDA 

change the following in the ```config/uda.json```

    cuda 
    max_seq_length
    sup_data_dir
    unsup_data_dir
    eval_data_dir
    pretrain_file
    vocab
    results_dir


``` 
bash run_model_uda.sh   
```

