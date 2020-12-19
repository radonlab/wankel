FROM radonlab/debian-codespace

RUN apt-get update \
    && apt-get install -y bison clang clang-tidy cmake flex git ninja-build python
