#!/bin/sh

python3 -m scripts.image_train 
MODEL_FLAGS="--image_size 256 --num_channels 256 --num_res_blocks 2  --learn_sigma True --use_scale_shift_norm true --attention_resolutions 32,16,8 --num_head_channels 64"
DIFFUSION_FLAGS="--resblock_updown True --diffusion_steps 1000 --noise_schedule linear --rescale_learned_sigmas False --rescale_timesteps False "
TRAIN_FLAGS="--iterations 2 --lr 1e-4 --microbatch 4 --dropout 0.1"


