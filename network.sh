source $(dirname "$0")/utils.sh

checkSudo

cat>>/etc/hosts<<EOF
151.101.192.133 raw.github.com
151.101.128.133 raw.githubusercontent.com
192.30.255.117 api.github.com
EOF