export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

proxy_name=http://172.16.0.2:8081
switch_trigger=proxy

if [ "`networksetup -getcurrentlocation`" = "$switch_trigger" ]; then
   export http_proxy=$proxy_name
   export https_proxy=$proxy_name
   export ftp_proxy=$proxy_name
fi
