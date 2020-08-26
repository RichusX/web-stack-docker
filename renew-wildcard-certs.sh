docker run -it --rm \
    -v "$DIR/data/ssl:/etc/letsencrypt" \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -e DOMAIN_NAME=<DOMAIN NAME> \
    -e CERTBOT_EMAIL=<EMAIL> \
    -e CLOUDFLARE_EMAIL=<EMAIL> \
    -e CLOUDFLARE_API_KEY=<CF API KEY> \
    single9/wildcard-letsencrypt

docker exec nginx-proxy nginx -s reload
