#!/bin/sh


MODEL_FLAGS="--image_size 64 --num_channels 64 --num_res_blocks 2  --num_channels 64 --class_cond True"
DIFFUSION_FLAGS="--diffusion_steps 100 --noise_schedule linear"
TRAIN_FLAGS="--lr_anneal_steps 4 --lr 1e-4 --batch_size 4"

python3 -m scripts.image_train $MODEL_FLAGS $DIFFUSION_FLAGS $TRAIN_FLAGS 
