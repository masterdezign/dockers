docker build $(pwd)/docker_torch/. \
  --build-arg UID=$(id -u) \
  --build-arg GID=$(id -g) \
  --build-arg USER=$(whoami) \
  -t torch-$(whoami)
