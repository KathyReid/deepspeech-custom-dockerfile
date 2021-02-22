# Custom Dockerfile for training models using DeepSpeech
# Kathy Reid <https://github.com/KathyReid>

# Get the latest DeepSpeech image
FROM mozilla/deepspeech-train:latest

# Install nano editor
RUN apt-get -y update && apt-get install -y nano

# Install vim editor
RUN apt-get -y update && apt-get install -y vim

# Install sox for inference
RUN apt-get -y update && apt-get install -y sox

# Overwrite config.py with the version that sets TF_FORCE_GPU_ALLOW_GROWTH
COPY config.py /DeepSpeech/training/deepspeech_training/util/config.py
