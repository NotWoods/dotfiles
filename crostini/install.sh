# Github CLI
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo gpg --dearmor -o /usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null

# Node v16.x
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -

sudo apt update
sudo apt install gh nano nodejs

# code-server
curl -fsSL https://code-server.dev/install.sh | sh

# pnpm
npm i -g pnpm
