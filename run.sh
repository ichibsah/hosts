git add .
git commit -am "$(date)"
git push

docker build --no-cache -t stevenblack-hosts .

#docker run --rm -it stevenblack-hosts updateHostsFile.py

# #docker run \
#     --pull always \
#     --rm -it \
#     -v "$(pwd)/hosts:/etc/hosts" \
#     -v "$(pwd)/whitelist:/hosts/whitelist" \
#     ghcr.io/stevenblack/hosts:latest updateHostsFile.py \
#     --auto --replace --extensions gambling porn

docker run \
    --rm -it \
    -v "$(pwd)/hosts:/etc/hosts" \
    -v "$(pwd)/whitelist:/hosts/whitelist" \
    stevenblack-hosts updateHostsFile.py \
    --auto --replace --extensions gambling porn fakenews others
    #--auto --replace --extensions gambling porn fakenews social others
    #--auto --replace --extensions others

    #stevenblack-hosts
    #ghcr.io/stevenblack/hosts:latest updateHostsFile.py \

git add .
git commit -am "$(date)"
git push