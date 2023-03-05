#!/bin/sh


MODEL_FLAGS="--image_size 64 --noise_schedule linear --num_channels 64 --num_res_blocks 2 --class_cond True"
SAMPLE_FLAGS="--batch_size 4 --num_samples 100 --label 0.32,0.01,0.00,0.01,0.01,0.00,0.07,0"
DIFFUSION_FLAGS="--diffusion_steps 100 --noise_schedule linear"

python3 -m scripts.image_sample --model_path output1/model000000.pt  $MODEL_FLAGS $SAMPLE_FLAGS $DIFFUSION_FLAGS
