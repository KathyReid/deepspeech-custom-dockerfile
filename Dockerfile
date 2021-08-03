# Custom Dockerfile for training models using DeepSpeech
# Kathy Reid <https://github.com/KathyReid>

# Get the latest DeepSpeech image
FROM mozilla/deepspeech-train:v0.9.3

# Install nano editor
RUN apt-get -y update && apt-get install -y nano

# Install vim editor
RUN apt-get -y update && apt-get install -y vim

# Install sox for inference
RUN apt-get -y update && apt-get install -y sox

# Overwrite config.py with the version that sets TF_FORCE_GPU_ALLOW_GROWTH
# This needs to match versions!!!
#COPY config.py /DeepSpeech/training/deepspeech_training/util/config.py

# Fix the NormalizeSampleRate error
#RUN cd /DeepSpeech/training/deepspeech_training/util && wget https://raw.githubusercontent.com/mozilla/DeepSpeech/v0.9.3/training/deepspeech_training/util/config.py

#RUN cp /DeepSpeech/training/deepspeech_training/util/config.py.1 /DeepSpeech/training/deepspeech_training/util/config.py

RUN pip install gin-config
RUN pip install pyogg
