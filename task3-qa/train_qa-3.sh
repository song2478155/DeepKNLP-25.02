CUDA_VISIBLE_DEVICES=5 python task3-qa/train_qa.py \
  --train_file data/korquad/train.jsonl \
  --validation_file data/korquad/validation.jsonl \
  --output_dir output/korquad/train_qa-by-koelectra \
  --model_name_or_path monologg/koelectra-base-v3-discriminator \
  --do_train \
  --do_eval \
  --num_train_epochs 2 \
  --save_total_limit 2 \
  --save_strategy epoch \
  --eval_strategy epoch \
  --per_device_train_batch_size 12 \
  --max_seq_length 512 \
  --doc_stride 128 \
  --learning_rate 3e-5 \
  --overwrite_output_dir
