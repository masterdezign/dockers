FROM pytorch/pytorch:1.9.1-cuda11.1-cudnn8-runtime

ARG USER="user"
ARG UID="1000"
ARG GID="100"

USER "root"

RUN apt-get update && apt-get -yqq install ssh git vim ctags zsh curl


RUN pip3 install --upgrade pip
# COPY requirements-dev.txt /tmp/requirements-dev.txt
# RUN pip3 install -r /tmp/requirements-dev.txt
# RUN pip3 install git+git://github.com/tensorforce/tensorforce.git@085a62bd37e0fdfd05691db29edeb2e1714ffbda

# Create user
RUN useradd -l -m -s /bin/zsh -N -u "${UID}" "${USER}"

# Switch to the created user
USER $UID

# Install Oh-My-Zsh
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# Set custom theme to distinguish the shell.
# See also https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
RUN sed -i 's/robbyrussell/apple/g' $HOME/.zshrc

# Configure Vim
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/masterdezign/vim/master/install.sh)"

WORKDIR /workspace/

CMD "ls"
