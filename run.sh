docker build --no-cache . -t stevenblack-hosts

#docker run --rm -it stevenblack-hosts updateHostsFile.py

docker run \
    --pull always \
    --rm -it \
    -v "$(pwd)/hosts:/etc/hosts" \
    -v "$(pwd)/whitelist:/hosts/whitelist" \
    ghcr.io/stevenblack/hosts:latest updateHostsFile.py \
    --auto --replace --extensions gambling porn