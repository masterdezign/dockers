docker run -it --rm --gpus=all \
  -v $(pwd):/workspace \
  --name torch-container-$(whoami) \
  torch-$(whoami) \
  /bin/zsh
