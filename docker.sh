source $(dirname "$0")/utils.sh

read -p "install docker, continue? [yn] " yn
if [[ ${yn} != "y" ]]
then
    echo "exit..."
    exit
fi

brew cask install docker

cat>>${HOME}/.zshrc<<EOF
alias di="docker images"
alias dc="docker container ls -as"
alias dr="docker rm"
alias dri="docker rmi"
EOF

cat<<EOF
Docker Preference
1. increase memory
2. registry-mirrors: https://sc5nvmqa.mirror.aliyuncs.com
EOF