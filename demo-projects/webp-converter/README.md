# Notes on WebP Converter Utility Container

## Steps

```shell
apt-get install libjpeg-dev libpng-dev libtiff-dev libgif-dev
apt-get install curl make

curl https://storage.googleapis.com/downloads.webmproject.org/releases/webp/libwebp-1.3.0.tar.gz -o webp.tar.gz

tar xvzf webp.tar.gz

cd libwebp-1.3.0
./configure
make
sudo make install

# install python
apt update
apt install software-properties-common

add-apt-repository ppa:deadsnakes/ppa

apt install python3.11

python3 --version

```

## Resources

- https://hub.docker.com/_/ubuntu
- https://developers.google.com/speed/webp/docs/compiling
- https://www.digitalocean.com/community/tutorials/how-to-create-and-serve-webp-images-to-speed-up-your-website
- https://phoenixnap.com/kb/how-to-install-python-3-ubuntu
- https://docs.python.org/3/tutorial/venv.html