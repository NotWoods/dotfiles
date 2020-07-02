$Server = Read-Host -Prompt 'Where to deploy to? (user@hostname)'

scp ./docker-compose.yml ${Server}:~/docker-compose.yml
scp ./Caddyfile ${Server}:~/.caddy/Caddyfile
