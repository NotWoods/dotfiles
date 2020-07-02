$Server = Read-Host -Prompt 'Where to deploy to? (user@hostname)'
$IP = $Server.Split("@")[1]

$RawHomerConfig = Get-Content -Path './homer/config.yml'
$RawHomerConfig.Replace('<ipaddr>', $IP) | Set-Content -Path './homer/temp.yml'
scp ./homer/temp.yml ${Server}:~/.homer/config.yml
Remove-Item ./homer/temp.yml

scp ./docker-compose.yml ${Server}:~/docker-compose.yml
scp ./Caddyfile ${Server}:~/.caddy/Caddyfile
